import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/modules/settings_module/views/feedback_page.dart';
import 'package:wellbeings/modules/settings_module/widgets/menu_item_widget.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/firebaseh.dart';
//import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import '../../../constants/app_colors.dart';
import '../../../data/isar_services.dart';
import '../../../utilities/app_functions.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';
import '../../../widgets/custom_dialogs.dart';
import '../../profile_module/bloc/profile_bloc/profile_bloc.dart';

class SettingsMenu extends StatelessWidget {
  const SettingsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MenuItemWidget(
              onTap: () {
                final profileBloc = BlocProvider.of<ProfileBloc>(context);
                profileBloc.add(const ProfileEvent.loadProfile());
                AppNavigator.pushNamed('/profilepage');
              },
              assetUrl: AppAssets.profileIcon,
              title: "Account"),
          const SizedBox(height: 8),

          const SizedBox(height: 8),
          MenuItemWidget(
            onTap: () {
              showSnackBar(
                  msg: "This feature will be available soon.",
                  icons: Icons.warning,
                  iconcolor: Colors.amber,
                  time: 1);
            },
            assetUrl: AppAssets.themeIcon,
            title: "Theme",
            suffixItem: Card(
              clipBehavior: Clip.hardEdge,
              shape: const StadiumBorder(
                  side: BorderSide(color: Color(0xFFD7D7D7))),
              elevation: 0,
              margin: EdgeInsets.zero,
              child: Container(
                padding: const EdgeInsets.all(4),
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.colorPrimary,
                      AppColors.colorSecondary,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 8),
          MenuItemWidget(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Feedback_Page()));
            },
            assetUrl: AppAssets.profileIcon,
            title: 'Feedback',
          ),
          const SizedBox(height: 8),
          MenuItemWidget(
              onTap: () {
                AppNavigator.pushNamed('/addFriends');

                // showSnackBar(
                //     msg: "This feature will be available soon.",
                //     icons: Icons.warning,
                //     iconcolor: Colors.amber,
                //     time: 1);
              },
              assetUrl: AppAssets.starIcon,
              title: "Add family Members"),
          const SizedBox(height: 8),
          // const MenuItemWidget(
          //     assetUrl: AppAssets.subscriptionIcon, title: "Subscription"),
          // const SizedBox(height: 8),
          // const MenuItemWidget(assetUrl: AppAssets.lockIcon, title: "Password"),
          // const SizedBox(height: 8),
          // const MenuItemWidget(assetUrl: AppAssets.atSign, title: "Support"),
          // const SizedBox(height: 8),
          // MenuItemWidget(
          //   assetUrl: AppAssets.dashboardIcon,
          //   title: "Connect with other apps",
          //   onTap: () {
          //     AppNavigator.push<Widget>(MaterialPageRoute(
          //       builder: (context) => const OtherAppsPage(),
          //     ));
          //   },
          // ),
          const SizedBox(height: 8),
          InkWell(
            onTap: () async {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomDialogWidget(
                    title: "Logout!",
                    content: "Are you sure to want to logout ?",
                    leftButton: CustomButton(
                      text: "Logout",
                      onTap: () async {
                        FireBaseServices().signOut();
                        await IsarServices().logOutUser().then((value) {
                          //ZegoUIKitPrebuiltCallInvitationService().uninit();
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/welcome',
                            (route) => false,
                          );
                        });
                      },
                    ),
                    rightButton: CustomButton(
                      text: "Cancel",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  );
                },
              );

              // await IsarServices().logOutUser().then((value) {
              //   Navigator.pushNamedAndRemoveUntil(
              //     context,
              //     '/welcome',
              //     (route) => false,
              //   );
              // });
            },
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                width: SizeConfig.sizeMultiplier * 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.red,
                          size: SizeConfig.sizeMultiplier * 4.5,
                        ),
                        const SizedBox(
                          width: 17,
                        ),
                        Text(
                          "Log Out",
                          style:
                              AppTextStyle.commonTextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                )),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
