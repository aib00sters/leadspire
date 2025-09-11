import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/size_config.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  bool isEmailVerified = false;
  Timer? timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.currentUser?.sendEmailVerification();
    timer =
        Timer.periodic(const Duration(seconds: 3), (_) => checkEmailVerified());
  }

  checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser?.reload();

    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerified) {
      // TODO: implement your code after email verification
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Email Successfully Verified")));
      Navigator.of(context).pushNamedAndRemoveUntil(
          '/questionnaire', (Route<dynamic> route) => false);
      timer?.cancel();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer?.cancel();
    super.dispose();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: SizeConfig.screenheight * .15),
              Center(
                child: Text(
                  'Check your \n Email',
                  style: TextStyle(
                      color: const Color.fromRGBO(58, 163, 209, 1),
                      fontSize: SizeConfig.textMultiplier * 6),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: SizeConfig.screenheight * .02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Center(
                  child: Text(
                    style: TextStyle(fontSize: SizeConfig.textMultiplier * 3),
                    'We have sent you a Email on  ${auth.currentUser?.email}',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenheight * .05),
              const Center(child: CircularProgressIndicator()),
              SizedBox(height: SizeConfig.screenheight * .05),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Center(
                  child: Text(
                    style: TextStyle(fontSize: SizeConfig.textMultiplier * 6),
                    'Verifying email....',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenheight * .05),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: ElevatedButton(
                  child: Text(
                    'Resend',
                    style: TextStyle(fontSize: SizeConfig.textMultiplier * 4),
                  ),
                  onPressed: () {
                    try {
                      FirebaseAuth.instance.currentUser
                          ?.sendEmailVerification();
                    } catch (e) {
                      debugPrint('$e');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
