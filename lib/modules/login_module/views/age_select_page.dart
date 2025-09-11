import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../utilities/app_navigator.dart';
import '../../../utilities/app_styles.dart';
import '../../../widgets/error_widget.dart';
import '../blocs/age_selection_bloc/age_selection_bloc.dart';
import '../blocs/avatar_list_bloc/avatars_list_bloc.dart';
import '../widgets/login_background.dart';

class AgeSelectPage extends StatefulWidget {
  const AgeSelectPage({super.key});

  @override
  State<AgeSelectPage> createState() => _AgeSelectPageState();
}

class _AgeSelectPageState extends State<AgeSelectPage> {
  // List<AgeGroupClass> ageGroupList = [
  //   AgeGroupClass(
  //       ageRange: "3-10", groupName: "Kid", imagePath: AppAssets.kidImage),
  //   AgeGroupClass(
  //       ageRange: "11-18",
  //       groupName: "Millennial",
  //       imagePath: AppAssets.millennialImage),
  //   AgeGroupClass(
  //       ageRange: "19-40", groupName: "Adult", imagePath: AppAssets.adultImage),
  //   AgeGroupClass(
  //       ageRange: "41+", groupName: "Older", imagePath: AppAssets.oldImage),
  // ];

  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AvatarsListBloc, AvatarsListState>(
      listener: (context, state) {
        state.whenOrNull(
          initial: () => AppNavigator.pushNamed("/avatarSelection"),
        );
      },
      child: SafeArea(
          child: Scaffold(
              body: LoginBackgroundWidget(
                  child: SingleChildScrollView(
        child: ScreenSetter(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "How old are you ?",
                style: AppTextStyle.boldTitleStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<AgeSelectionBloc, AgeSelectionState>(
                builder: (context, state) {
                  return state.when(
                    error: (errorMessage) => const CustomErrorWidget(),
                    initial: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (ageGroupModel, selectedIndex) {
                      return GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        shrinkWrap: true,
                        itemCount: ageGroupModel.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 1.8),
                        itemBuilder: (context, int index) {
                          return InkWell(
                            onTap: () async {
                              final ageSelectionBloc =
                                  BlocProvider.of<AgeSelectionBloc>(context);
                              ageSelectionBloc.add(
                                  AgeSelectionEvent.selectageGroup(
                                      ageGroups: ageGroupModel,
                                      selectedIndex: index));

                              selectAge(
                                agegroup: ageGroupModel[index].groupRange,
                              );
                            },
                            child: Card(
                              color: const Color(0XFFF2F2F2),
                              elevation: 0,
                              clipBehavior: Clip.hardEdge,
                              margin: const EdgeInsets.all(10),
                              child: Row(children: [
                                Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.asset(
                                          ageGroupModel[index].imageUrl),
                                    )),
                                Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            ageGroupModel[index].groupName,
                                            style: AppTextStyle.commonTextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            ageGroupModel[index].groupRange,
                                            style: AppTextStyle.commonTextStyle(
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      2.4,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Radio(
                                        value: selectedIndex,
                                        groupValue: index,
                                        onChanged: (value) async {
                                          selectAge(
                                            agegroup:
                                                ageGroupModel[index].groupRange,
                                          );
                                        },
                                      ),
                                    ))
                              ]),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      )))),
    );
  }

  Future<void> selectAge({required String agegroup}) async {
    await IsarServices().updateAge(agegroup: agegroup).then((value) {
      final avatarBloc = BlocProvider.of<AvatarsListBloc>(context);
      avatarBloc.add(const AvatarsListEvent.getAvatar(gender: ""));
      AppNavigator.pushNamed("/avatarSelection");
    });
  }
}
