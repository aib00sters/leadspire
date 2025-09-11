import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:wellbeings/data/isar_models/user_data_model/user_data_class.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/app_navigator.dart';

class FireBaseServices {
  final _auth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn.instance;
  // final _formkey = GlobalKey<FormState>();

  var context;

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await _googleSignIn.authenticate();
      final GoogleSignInAuthentication googleSignInAuthentication =
          googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
      );
      print('Credential accessToken: ${credential.accessToken != null}');
      print('Credential idToken: ${credential.providerId != null}');
      print("credential created");
      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      print("Firebase login completed");
      final User? user = authResult.user;

      if (user != null) {
        if (authResult.additionalUserInfo!.isNewUser) {
          print("data");
          final User? currentUser = _auth.currentUser;
          print(currentUser?.uid);
          IsarServices().saveLoginId(currentUser?.uid);
          AppNavigator.pushReplacementNamed('/questionnaire');
        } else {
          assert(!user.isAnonymous);
          assert(await user.getIdToken() != null);
          final User? currentUser = _auth.currentUser;
          assert(user.uid == currentUser?.uid);
          IsarServices().saveLoginId(currentUser?.uid);
          final user1 = await FirebaseFirestore.instance
              .collection('users')
              //.where('fcmToken', isEqualTo: fcmToken)
              .where('uniqueid', isEqualTo: currentUser?.uid)
              .get();
          if (user1.docs.isNotEmpty) {
            var userData = user1.docs.first.data();
            print(userData["profilePic"]);
            print(userData["name"]);
            print(user1.docs.first.id);
            saveUserData(
                userId: user1.docs.first.id,
                name: userData["name"],
                imagePath: userData["profilePic"],
                userName: userData["userName"],
                fcmtoken: userData["fcmToken"]);
            print('signInWithGoogle succeeded: $user');
            AppNavigator.pushReplacementNamed("/home");
          } else {
            // No document found
            AppNavigator.pushReplacementNamed('/questionnaire');
          }

          return user;
        }
      }
    } catch (e) {
      print('Error signing in with credential: $e');
      if (e is FirebaseAuthException) {
        print('Firebase Auth Error Code: ${e.code}');
        print('Firebase Auth Error Message: ${e.message}');
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print(e.toString());
    }
    return null;
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }

  Future<void> deleteUser() async {
    final FirebaseAuth auth = FirebaseAuth.instance;

    try {
      User? user = auth.currentUser;

      if (user != null) {
        // Optional: Delete user data from Firestore (if needed)

        // Delete the Firebase Auth user
        await user.delete();

        print("User account deleted successfully.");
      } else {
        print("No user is currently signed in.");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        print("The user must reauthenticate before deleting their account.");
        // Call a reauthentication function here if needed
      } else {
        print("Error deleting user: ${e.message}");
      }
    } catch (e) {
      print("An unexpected error occurred: $e");
    }
  }
}

Future<void> saveUserData({
  required String userId,
  required String name,
  required String imagePath,
  required String userName,
  required String fcmtoken,
}) async {
  final isar = await IsarServices().openDB();
  var data = await isar.userDatas.get(0);
  if (data == null) {
    data = UserData()
      ..userId = userId
      ..name = name
      ..fcmToken = fcmtoken
      ..userName = userName
      ..avatarImage = imagePath;
  } else {
    data.userId = userId;
    data.name = name;
    data.fcmToken = fcmtoken;
    data.avatarImage = imagePath;
    data.userName = userName;
  }
  isar.writeTxnSync(() {
    isar.userDatas.putSync(data!);
  });
}
