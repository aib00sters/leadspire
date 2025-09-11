import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:isar/isar.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/firebaseh.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signInWithApple(BuildContext context) async {
    try {
      // Step 1: Get Apple Credential
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        webAuthenticationOptions: WebAuthenticationOptions(
          clientId: 'XC9D862BGP',
          redirectUri: Uri.parse(
              'https://wellbeing-b147a.firebaseapp.com/__/auth/handler'),
        ),
      );

      // Step 2: Create Firebase Auth Credential
      final OAuthProvider oAuthProvider = OAuthProvider('apple.com');
      final AuthCredential credential = oAuthProvider.credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      // Step 3: Sign in with Firebase
      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      final User? user = authResult.user;

      if (user != null) {
        final User? currentUser = _auth.currentUser;

        // Save user ID locally
        IsarServices().saveLoginId(currentUser?.uid);

        // Step 4: Check if it's a new user
        if (authResult.additionalUserInfo!.isNewUser) {
          AppNavigator.pushReplacementNamed('/questionnaire');
        } else {
          // Step 5: Check Firestore for user data
          final userDoc = await FirebaseFirestore.instance
              .collection('users')
              .where('uniqueid', isEqualTo: currentUser?.uid)
              .get();

          if (userDoc.docs.isNotEmpty) {
            var userData = userDoc.docs.first.data();
            saveUserData(
              userId: userDoc.docs.first.id,
              name: userData["name"],
              imagePath: userData["profilePic"],
              userName: userData["userName"],
              fcmtoken: userData["fcmToken"],
            );
            AppNavigator.pushReplacementNamed("/home");
          } else {
            AppNavigator.pushReplacementNamed('/questionnaire');
          }
        }
      }
    } catch (e) {
      print('Error during Apple Sign-In: $e');
      if (e is FirebaseAuthException) {
        print('Firebase Auth Error Code: ${e.code}');
        print('Firebase Auth Error Message: ${e.message}');
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please try again")),
      );
    }
  }
}
