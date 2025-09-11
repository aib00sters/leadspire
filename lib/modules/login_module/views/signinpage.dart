import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/login_module/views/sign_up_page.dart';
import 'package:wellbeings/modules/login_module/widgets/login_background.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/firebaseh.dart';
import 'package:wellbeings/utilities/firehelper.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/siginwithapple.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/button_widget.dart';
import 'package:wellbeings/widgets/loading_overlay.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final textcontroller1 = TextEditingController();

  final textcontroller2 = TextEditingController();
  final AuthService _authService = AuthService();

  final GoogleSignIn googleSignIn = GoogleSignIn.instance;

  LoadingOverlay loadingOverlay = LoadingOverlay();
  @override
  void initState() {
    //cleardata();
  }

  Future<void> cleardata() async {
    await IsarServices().logOutUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LoginBackgroundWidget(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.screenheight * .15,
            ),
            Text("Sign In",
                style: AppTextStyle.largeTitleStyle(
                    fontSize: SizeConfig.sizeMultiplier * 8)
                // TextStyle(
                //   color: Colors.black,
                //   fontSize: SizeConfig.sizeMultiplier * 8,
                // ),
                ),
            SizedBox(
              height: SizeConfig.screenheight * .05,
            ),
            SizedBox(
              width: SizeConfig.screenwidth * .82,
              child: TextFormField(
                controller: textcontroller1,
                decoration: InputDecoration(
                    fillColor: const Color.fromRGBO(232, 232, 232, 1),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                    hintText: "Email"),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenheight * .01,
            ),
            SizedBox(
              width: SizeConfig.screenwidth * .82,
              child: TextFormField(
                controller: textcontroller2,
                decoration: InputDecoration(
                    fillColor: const Color.fromRGBO(232, 232, 232, 1),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                    hintText: "password"),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenheight * .035,
            ),
            GradientButton(
              text: "sign in",
              onTap: () {
                if (textcontroller1.text.isNotEmpty &&
                    textcontroller2.text.isNotEmpty) {
                  loadingOverlay.show(context);
                  String mail = textcontroller1.text.trim();
                  String pword = textcontroller2.text.trim();
                  FireHelper()
                      .signin(email: mail, password: pword)
                      .then((result) {
                    if (result == "success") {
                      loadingOverlay.hide();
                      AppNavigator.pushReplacementNamed('/home');
                    } else if (result == "data not filled") {
                      loadingOverlay.hide();
                      AppNavigator.pushReplacementNamed('/questionnaire');
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(content: Text(result ?? "Fill your data")));
                    } else {
                      loadingOverlay.hide();
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(result ?? "Fill your data")));
                    }
                  });
                } else {
                  loadingOverlay.hide();
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Invalid user name and password")));
                }
              },
              height: SizeConfig.sizeMultiplier * 11,
              width: (SizeConfig.screenwidth * .82),
            ),
            SizedBox(
              height: SizeConfig.screenheight * .025,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have an account?",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: SizeConfig.textMultiplier * 3),
                ),
                TextButton(
                  onPressed: () {
                    print("jkjda");
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ));
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.textMultiplier * 3),
                  ),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.screenheight * .02,
            ),
            const Text("Or"),
            SizedBox(
              height: SizeConfig.screenheight * .03,
            ),
            SignInButton(
              Buttons.google,
              text: "Sign in with Google",
              onPressed: () {
                // FireHelper().handleSignIn();
                FireBaseServices().signInWithGoogle();
              },
            ),
            SizedBox(
              height: SizeConfig.screenheight * .02,
            ),
            SignInButton(
              Buttons.anonymous,
              text: "Sign in with Phone",
              onPressed: () {
                AppNavigator.pushNamed('/phonePage');
              },
            ),
            SizedBox(
              height: SizeConfig.screenheight * .02,
            ),
            // SignInButton(
            //   Buttons.apple,
            //   text: "Sign in with Apple",
            //   onPressed: () {
            //     AppNavigator.pushNamed('/phonePage');
            //   },
            // )
            SizedBox(
                width: SizeConfig.screenwidth * .6,
                child: SignInWithAppleButton(
                  onPressed: () => _authService.signInWithApple(context),
                ))
          ],
        ),
      ),
    ));
  }
}
