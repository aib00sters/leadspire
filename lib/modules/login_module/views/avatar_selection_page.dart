import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/login_module/blocs/avatar_list_bloc/avatars_list_bloc.dart';
import 'package:wellbeings/modules/login_module/views/signinpage.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../utilities/app_functions.dart';
import '../../../widgets/loading_overlay.dart';
import '../blocs/login_bloc/login_bloc.dart';

class AvatarSelectionPage extends StatefulWidget {
  const AvatarSelectionPage({super.key});

  @override
  State<AvatarSelectionPage> createState() => _AvatarSelectionPageState();
}

class _AvatarSelectionPageState extends State<AvatarSelectionPage> {
  LoadingOverlay loadingOverlay = LoadingOverlay();

  List<String> avatars = [
    AppAssets.avatar1,
    AppAssets.avatar2,
    AppAssets.avatar3,
    AppAssets.avatar4,
    AppAssets.avatar5,
    AppAssets.avatar6,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
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
          "Avatar Selection",
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
              //AppNavigator.pushReplacementNamed('/couponPage');
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/couponPage', (Route<dynamic> route) => false);
                  //  Navigator.of(context).pushNamedAndRemoveUntil(
                  // '/topicPage', (Route<dynamic> route) => false);
              // Navigator.of(context).pushReplacement(
              //     MaterialPageRoute(builder: (context) => SignInPage()));
            },
          );
        },
        child: ScreenSetter(
            child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * .04,
              ),
              Text(
                "Choose your avatar",
                style: AppTextStyle.largeTitleStyle(),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "You can choose one from the available option or customize on your own.",
                style: AppTextStyle.titleTextStyle(
                    fontSize: SizeConfig.textMultiplier * 2.8),
              ),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<AvatarsListBloc, AvatarsListState>(
                builder: (context, state) {
                  return state.when(
                    error: (errorMsg) {
                      return const SizedBox.shrink();
                    },
                    success: (avatarImages, userName, name) {
                      return Expanded(
                        child: SingleChildScrollView(
                          child: Wrap(
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
                                      visible: true,
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
                          ),
                        ),
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
        )),
      ),
    ));
  }
}
