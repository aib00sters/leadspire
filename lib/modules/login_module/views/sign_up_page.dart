import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/login_module/views/email_verification_page.dart';
import 'package:wellbeings/modules/login_module/views/signinpage.dart';
import 'package:wellbeings/modules/login_module/widgets/login_background.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/firebaseh.dart';
import 'package:wellbeings/utilities/firehelper.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/button_widget.dart';
import 'package:wellbeings/widgets/loading_overlay.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final textcontroller1 = TextEditingController();

  final textcontroller2 = TextEditingController();
  final textcontroller3 = TextEditingController();
  final textcontroller4 = TextEditingController();
  LoadingOverlay loadingOverlay = LoadingOverlay();

  final _formKey = GlobalKey<FormState>();

  String _password = '';

  final String _confirmPassword = '';
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Process data.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    void submitForm() {
      if (_formKey.currentState!.validate()) {
        // Process data.
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Processing Data')),
        );
      }
    }

    return Form(
      key: _formKey,
      child: Scaffold(
        body: LoginBackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.screenheight * .2,
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.sizeMultiplier * 8,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .05,
                ),
                SizedBox(
                  width: SizeConfig.screenwidth * .85,
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
                  width: SizeConfig.screenwidth * .85,
                  child: TextFormField(
                    controller: textcontroller2,
                    onSaved: (value) => _password = value!,
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
                  height: SizeConfig.screenheight * .01,
                ),
                SizedBox(
                  width: SizeConfig.screenwidth * .85,
                  child: TextFormField(
                    controller: textcontroller4,
                    keyboardType: TextInputType.number,
                    onSaved: (value) => _password = value!,
                    decoration: InputDecoration(
                        fillColor: const Color.fromRGBO(232, 232, 232, 1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none),
                        hintText: "phone number"),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .025,
                ),
                GradientButton(
                  text: "sign up",
                  onTap: () async {
                    if (textcontroller1.text.isNotEmpty &&
                        textcontroller2.text.isNotEmpty &&
                        textcontroller4.text.isNotEmpty) {
                      loadingOverlay.show(context);
                      await IsarServices()
                          .savePhoneNumber(textcontroller2.text);

                      String mail = textcontroller1.text.trim();
                      String pword = textcontroller2.text.trim();
                      FireHelper()
                          .signuP(email: mail, password: pword)
                          .then((result) {
                        if (result == null) {
                          loadingOverlay.hide();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const EmailVerificationScreen()));
                 
                        } else {
                          loadingOverlay.hide();
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(result)));
                        }
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Fields missing")));
                    }
                  },
                  height: SizeConfig.sizeMultiplier * 11,
                  width: (SizeConfig.widthMultiplier * 85.6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
