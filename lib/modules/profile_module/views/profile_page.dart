import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_functions.dart';
import '../../../widgets/loading_overlay.dart';
import '../../login_module/blocs/login_bloc/login_bloc.dart';
import '../bloc/profile_bloc/profile_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  LoadingOverlay loadingOverlay = LoadingOverlay();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
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
            final profileBloc = BlocProvider.of<ProfileBloc>(context);
            profileBloc.add(const ProfileEvent.loadProfile());
          },
        );
      },
      child: SafeArea(child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.appBGColor,
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/profileappbar.png'),
                      Positioned(
                          child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.arrow_back),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  "Profile",
                                  style: AppTextStyle.largeTitleStyle(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                  ScreenSetter(
                      child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.widthMultiplier * 19,
                      ),
                      Stack(children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: CircleAvatar(
                            backgroundImage: state.whenOrNull(
                                loadProfileSuccess: (profilePic, name, userName,
                                        ageGroup, gender) =>
                                    CachedNetworkImageProvider(profilePic)),
                          ),
                        ),
                        Positioned(
                            left: 73,
                            top: 75,
                            child: InkWell(
                                onTap: () {
                                  state.whenOrNull(
                                    loadProfileSuccess: (profilePic, name,
                                        userName, ageGroup, gender) {
                                      showEditNameDialog(
                                          action: 'changeName',
                                          image: profilePic,
                                          name: name,
                                          userName: userName,
                                          context: context);
                                    },
                                  );
                                },
                                child: const Icon(Icons.edit_square)))
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          state.whenOrNull(
                                  loadProfileSuccess: (profilePic, name,
                                          userName, ageGroup, gender) =>
                                      name) ??
                              "",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        state.whenOrNull(
                              loadProfileSuccess: (profilePic, name, userName,
                                      ageGroup, gender) =>
                                  userName,
                            ) ??
                            "",
                        style: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Card(
                                    child: state.whenOrNull(
                                  loadProfileSuccess: (profilePic, name,
                                          userName, ageGroup, gender) =>
                                      SizedBox(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Gender : $gender",
                                          style: AppTextStyle.boldTitleStyle(
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                            Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Card(
                                    child: state.whenOrNull(
                                  loadProfileSuccess: (profilePic, name,
                                          userName, ageGroup, gender) =>
                                      SizedBox(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Agegroup : $ageGroup",
                                          style: AppTextStyle.boldTitleStyle(
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                )))
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          AppNavigator.pushNamed('/selectGender');
                        },
                        child: Card(
                          child: SizedBox(
                            width: SizeConfig.widthMultiplier * 100,
                            height: SizeConfig.heightMultiplier * 8,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit_square,
                                    color: AppColors.colorPrimary,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Edit Profile"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.of(context).push(MaterialPageRoute(
                      //       builder: (context) => const DailySteps(),
                      //     ));
                      //   },
                      //   child: Card(
                      //     child: SizedBox(
                      //       width: SizeConfig.widthMultiplier * 100,
                      //       height: SizeConfig.heightMultiplier * 8,
                      //       child: const Padding(
                      //         padding: EdgeInsets.only(left: 15),
                      //         child: Row(
                      //           children: [
                      //             Icon(
                      //               Icons.monitor_heart_outlined,
                      //               color: AppColors.colorPrimary,
                      //             ),
                      //             Padding(
                      //               padding: EdgeInsets.only(left: 10),
                      //               child: Text("Biometric screen"),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  )),
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}
