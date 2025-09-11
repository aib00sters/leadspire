import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:wellbeings/modules/login_module/views/otp_page.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/button_widget.dart';
import 'package:wellbeings/widgets/loading_overlay.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  TextEditingController countrycode = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  LoadingOverlay loadingOverlay = LoadingOverlay();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countrycode.text = "+91";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Phone No",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Row(
                children: [
                  CountryCodePicker(
                    onChanged: (value) {
                      countrycode.text = value.dialCode!;
                    },
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IT',
                    favorite: const ['+1', 'FR'],
                    // countryFilter: const ['IT', 'FR'],
                    // flag can be styled with BoxDecoration's `borderRadius` and `shape` fields
                    flagDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "|",
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),
                  Expanded(
                      child: TextField(
                    enabled: !isLoading,
                    keyboardType: TextInputType.number,
                    controller: phonenumber,
                    decoration: const InputDecoration(
                        hintText: "Enter your Phone Number",
                        border: InputBorder.none),
                  )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GradientButton(
            text: isLoading ? "Loding..." : "Send OTP",
            onTap: () {
              if (isLoading) {
              } else {
                verifyPhoneNumber(
                    countrycode.text.trim() + phonenumber.text.trim(), context);
              }
            },
            height: SizeConfig.sizeMultiplier * 11,
            width: (SizeConfig.widthMultiplier * 89.6).clamp(350, 370),
          ),
        ],
      ),
    );
  }

  void verifyPhoneNumber(String phoneNumber, BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException error) {
        print(error);
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Invalid Number")));
        setState(() {
          isLoading = false;
        });
      },
      codeSent: (String verificationId, int? forceResendingToken) {
        setState(() {
          isLoading = false;
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpPage(verificationId: verificationId),
          ),
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
