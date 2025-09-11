import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/firebaseh.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/button_widget.dart';
import 'package:wellbeings/widgets/loading_overlay.dart';

class OtpPage extends StatefulWidget {
  final String verificationId;

  const OtpPage({super.key, required this.verificationId});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otpController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  String errorMessage = '';
  bool isLoading = false;
  LoadingOverlay loadingOverlay = LoadingOverlay();
  @override
  void initState() {
    _listenForOtp();
    super.initState();
  }

  void _listenForOtp() async {
    SmsAutoFill().listenForCode;
  }

  void verifyOtp() async {
    setState(() {
      isLoading = true;
    });
    final String otp = otpController.text.trim();

    if (otp.length == 6) {
      try {
        loadingOverlay.show(context);
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: widget.verificationId,
          smsCode: otp,
        );

        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        final bool isNewUser =
            userCredential.additionalUserInfo?.isNewUser ?? false;
        final String uid = userCredential.user?.uid ?? '';

        if (isNewUser) {
          loadingOverlay.hide();
          setState(() {
            isLoading = false;
          });
          await IsarServices().saveLoginId(uid);
          // Navigator.pushAndRemoveUntil(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => RegisterPage(uidPhone: uid)),
          //   (Route<dynamic> route) => false,
          // );
          // AppNavigator.pushNamed('/questionnaire');
          Navigator.of(context).pushNamedAndRemoveUntil(
              '/questionnaire', (Route<dynamic> route) => false);
        } else {
          loadingOverlay.hide();
          setState(() {
            isLoading = false;
          });
          await IsarServices().saveLoginId(auth.currentUser?.uid);
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
            // AppNavigator.pushReplacementNamed('/home');
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/home', (Route<dynamic> route) => false);
            // Navigator.pushAndRemoveUntil(
            //   context,
            //   MaterialPageRoute(builder: (context) => HomePage(uid: uid)),
            //   (Route<dynamic> route) => false,
            // );
          } else {
            loadingOverlay.hide();
            setState(() {
              isLoading = false;
            });
            AppNavigator.pushReplacementNamed('/questionnaire');
          }
        }
      } catch (e) {
        loadingOverlay.hide();
        setState(() {
          errorMessage = 'Failed to verify OTP. Try again.';
          isLoading = false;
        });
        print(e);
      }
    } else {
      setState(() {
        isLoading = false;
        errorMessage = 'Enter a valid 6-digit OTP.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "OTP",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            if (errorMessage.isNotEmpty)
              Text(
                errorMessage,
                style: const TextStyle(color: Colors.red, fontSize: 14),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PinFieldAutoFill(
                codeLength: 6,
                
                onCodeChanged: (code) {
                  if (code?.length == 6) {
                    otpController.text = code!;
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            // SizedBox(
            //   width: MediaQuery.sizeOf(context).width * .85,
            //   child: ElevatedButton(
            //     onPressed: verifyOtp,
            //     style: ElevatedButton.styleFrom(
            //       shape: const StadiumBorder(),
            //       backgroundColor: const Color.fromRGBO(58, 163, 209, 1),
            //     ),
            //     child: isLoading
            //         ? const SizedBox(
            //             height: 20,
            //             width: 20,
            //             child: CircularProgressIndicator(
            //                 backgroundColor: Colors.cyan),
            //           )
            //         : const Text(
            //             'Verify and Continue',
            //             style: TextStyle(color: Colors.white, fontSize: 20),
            //           ),
            //   ),
            // ),
            GradientButton(
              text: isLoading ? "Loding..." : "Verify and Continue",
              onTap: verifyOtp,
              height: SizeConfig.sizeMultiplier * 11,
              width: (SizeConfig.widthMultiplier * 89.6).clamp(350, 370),
            ),
          ],
        ),
      ),
    );
  }
}
