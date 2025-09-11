import 'package:cloud_firestore/cloud_firestore.dart';
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

class CouponPage extends StatefulWidget {
  const CouponPage({super.key});

  @override
  State<CouponPage> createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  final textcontroller1 = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: LoginBackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.screenheight * .35,
                ),
                Text(
                  "Registration Code",
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
                          hintText: "Registration Code"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid code';
                        }
                        return null;
                      }),
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .01,
                ),
                SizedBox(
                  height: SizeConfig.screenheight * .025,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GradientButton(
                        text: "Registration code",
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            signinwithCoupon(textcontroller1.text, context)
                                .then((value) => {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil('/home',
                                              (Route<dynamic> route) => false)
                                    });
                          }
                        },
                        height: SizeConfig.sizeMultiplier * 11,
                        width: (SizeConfig.widthMultiplier * 40.6),
                      ),
                      GradientButton(
                        text: "Skip",
                        onTap: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/home', (Route<dynamic> route) => false);
                        },
                        height: SizeConfig.sizeMultiplier * 11,
                        width: (SizeConfig.widthMultiplier * 20.6),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signinwithCoupon(String couonId, BuildContext contest) async {
    final loginid = await IsarServices().getLoginId();
    Map<String, dynamic> userData = {
      'couponId': couonId,
      'loginId': loginid,
    };
    final docRef = await FirebaseFirestore.instance
        .collection('Coupon_logins')
        .add(userData);
  }
}
