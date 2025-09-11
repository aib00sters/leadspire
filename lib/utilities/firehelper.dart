import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wellbeings/data/isar_models/user_data_model/user_data_class.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/app_navigator.dart';

class FireHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser;
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  //signup
  Future<String?> signuP(
      {required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      print(auth.currentUser?.uid);
      IsarServices().saveLoginId(auth.currentUser?.uid);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<void> _handleSignOut() => _googleSignIn.disconnect();
  //SignIn
  Future<String?> signin(
      {required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

      print(auth.currentUser?.uid);
      IsarServices().saveLoginId(auth.currentUser?.uid);
      final user = await FirebaseFirestore.instance
          .collection('users')
          //.where('fcmToken', isEqualTo: fcmToken)
          .where('uniqueid', isEqualTo: auth.currentUser?.uid)
          .get();
      if (user.docs.isNotEmpty) {
        var userData = user.docs.first.data();
        print(userData["profilePic"]);
        print(userData["name"]);
        print(user.docs.first.id);
        saveUserData(
            userId: user.docs.first.id,
            name: userData["name"],
            imagePath: userData["profilePic"],
            userName: userData["userName"],
            fcmtoken: userData["fcmToken"]);
        return "success";
      } else {
        // No document found
        return "data not filled";
        
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
    return "error";
    //return "null";
    // return null;
    //return null;
    // return null;
  }

  Future<void> signOut() async {
    await auth.signOut();
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
}
