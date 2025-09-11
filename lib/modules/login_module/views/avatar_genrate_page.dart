import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/login_module/blocs/avatar_generatio_bloc/avathar_generation_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/avatar_list_bloc/avatars_list_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/login_bloc/login_bloc.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/button_widget.dart';
import 'package:wellbeings/widgets/loading_overlay.dart';

import '../../../utilities/app_functions.dart';

class AvatarGenerationPage extends StatefulWidget {
  const AvatarGenerationPage({super.key});

  @override
  State<AvatarGenerationPage> createState() => _AvatarGenerationPageState();
}

class _AvatarGenerationPageState extends State<AvatarGenerationPage> {
  final GlobalKey webViewKey = GlobalKey();
  LoadingOverlay loadingOverlay = LoadingOverlay();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBGColor,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: true,
          leading: Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                color: AppColors.appBGColor,
                child: Container(
                  height: SizeConfig.sizeMultiplier * 10,
                  width: SizeConfig.sizeMultiplier * 10,
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    AppAssets.backArrow,
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            "Avatar Generation",
            style: AppTextStyle.titleTextStyle(),
          ),
        ),
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (errorMsg) {
                loadingOverlay.hide();
                showSnackBar(
                    msg: errorMsg,
                    icons: Icons.error,
                    iconcolor: Colors.red,
                    time: 1);
              },
              loading: () {
                loadingOverlay.show(context);
              },
              success: (userId, fcmTocken) {
                loadingOverlay.hide();
                // Navigator.pushNamedAndRemoveUntil(
                //     context, '/home', (route) => false);
                final refreshBloc =
                    BlocProvider.of<AvatharGenerationBloc>(context);
                refreshBloc.add(const AvatharGenerationEvent.started());
                AppNavigator.pushNamed('/couponPage');

                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => SignInPage()));
              },
            );
          },
          child: ScreenSetter(
              child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * .04,
                  ),
                  Text(
                    "Generate your avatar",
                    style: AppTextStyle.largeTitleStyle(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "You can generate your avatar by giving the below discription.",
                    style: AppTextStyle.titleTextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.8),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    width: SizeConfig.widthMultiplier * 70.6,
                    height: SizeConfig.sizeMultiplier * 14,
                    child: const TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black38),
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: "Enter the name ",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenheight * .02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        width: SizeConfig.widthMultiplier * 70.6,
                        child: const TextField(
                          maxLines: 7,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black38),
                              contentPadding:
                                  EdgeInsets.only(left: 10, top: 12),
                              hintText:
                                  "Please provide details about your AI avatar. Include characteristics such as eye color, skin tone, and hair color. Be as descriptive as possible to help create a more personalized avatar ",
                              border: InputBorder.none),
                        ),
                      ),
                      GradientButton(
                        text: "Go",
                        onTap: () {
                          final avatarBloc =
                              BlocProvider.of<AvatharGenerationBloc>(context);
                          avatarBloc.add(
                              const AvatharGenerationEvent.getAvatar(dec: ""));
                        },
                        width: SizeConfig.widthMultiplier * 15.6,
                        height: SizeConfig.sizeMultiplier * 13,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<AvatharGenerationBloc, AvatharGenerationState>(
                    builder: (context, state) {
                      return state.when(
                        error: (errorMsg) {
                          return const SizedBox.shrink();
                        },
                        success: (avatarImages, userName, name) {
                          return Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            children: avatarImages.result!
                                    .map((e) => InkWell(
                                          onTap: () {
                                            showEditNameDialog(
                                                action: 'login',
                                                image: e.image,
                                                name: name,
                                                userName: userName,
                                                context: context);
                                            // final loginBloc =
                                            //     BlocProvider.of<LoginBloc>(context);
                                            // loginBloc.add(LoginEvent.login(
                                            //   name: e.name!,
                                            //   profileImage: e.image!,
                                            // ));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Card(
                                                  color: AppColors.cardBgColor,
                                                  elevation: 0,
                                                  clipBehavior: Clip.hardEdge,
                                                  margin: EdgeInsets.zero,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      12,
                                                    ),
                                                  ),
                                                  child: SizedBox(
                                                    height: SizeConfig
                                                            .sizeMultiplier *
                                                        25,
                                                    width: SizeConfig
                                                            .sizeMultiplier *
                                                        25,
                                                    child: Image.network(
                                                      e.image!,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                // Text(
                                                //   e.name!,
                                                //   style:
                                                //       AppTextStyle.boldTitleStyle(),
                                                // )
                                              ],
                                            ),
                                          ),
                                        ))
                                    .toList() +
                                [
                                  InkWell(
                                    onTap: () async {
                                      // try {
                                      //   const platform =
                                      //       MethodChannel("wellbeings/channel");
                                      //   final avatarData = await platform
                                      //       .invokeMethod('generateAvatar');
                                      // } on PlatformException {
                                      //   rethrow;
                                      // }

                                      AppNavigator.pushNamed(
                                          '/avatarGeneration');
                                    },
                                    child: Visibility(
                                      visible: false,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                          elevation: 0,
                                          margin: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                color: AppColors.colorPrimary),
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          child: SizedBox(
                                            height:
                                                SizeConfig.sizeMultiplier * 25,
                                            width:
                                                SizeConfig.sizeMultiplier * 25,
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(9.0),
                                                child: Image.asset(
                                                    AppAssets.addMoreImage),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                          );
                        },
                        initial: () {
                          return const SizedBox.shrink();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
