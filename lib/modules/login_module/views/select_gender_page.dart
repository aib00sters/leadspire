import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/login_module/widgets/login_background.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../data/isar_services.dart';
import '../../../utilities/app_functions.dart';
import '../../../utilities/app_navigator.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/error_widget.dart';
import '../blocs/age_selection_bloc/age_selection_bloc.dart';
import '../blocs/personal_survey_bloc/personal_survey_bloc.dart';
import '../models/age_group_model/age_group_model.dart';

class AgeGroupClass {
  final String groupName;
  final String ageRange;
  final String imagePath;
  AgeGroupClass(
      {required this.ageRange,
      required this.groupName,
      required this.imagePath});
}

class SelectGenderPage extends StatefulWidget {
  const SelectGenderPage({super.key});

  @override
  State<SelectGenderPage> createState() => _SelectGenderPageState();
}

class _SelectGenderPageState extends State<SelectGenderPage> {
  String selectedGender = "";

  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.appBGColor,
      body: LoginBackgroundWidget(
          child: Stack(
        children: [
          ScreenSetter(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 15,
                  ),
                  Text(
                    "What's your gender ?",
                    style: AppTextStyle.boldTitleStyle(),
                  ),
                  SizedBox(
                    height: SizeConfig.screenheight * .05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedGender = "Male";
                              });
                              // selectGender("Male");
                            },
                            child: Card(
                              elevation: 0,
                              color: selectedGender == "Male"
                                  ? Colors.white
                                  //const Color.fromARGB(255, 173, 216, 243)
                                  : Colors.white,
                              clipBehavior: Clip.hardEdge,
                              margin: EdgeInsets.zero,
                              shape: const StadiumBorder(),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                height: SizeConfig.sizeMultiplier * 25,
                                width: SizeConfig.sizeMultiplier * 25,
                                child: Image.asset(AppAssets.malepic),
                              ),
                            ),
                          ),
                          Text(
                            "Male",
                            style: AppTextStyle.boldTitleStyle(
                              color: selectedGender == "Male"
                                  ? AppColors.colorPrimary
                                  : AppColors.appBlack,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenwidth * .05,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedGender = "Female";
                              });
                              // selectGender("Female");
                            },
                            child: Card(
                              color: selectedGender == "Female"
                                  ? Colors.white
                                  : Colors.white,
                              elevation: 0,
                              clipBehavior: Clip.hardEdge,
                              margin: EdgeInsets.zero,
                              shape: const StadiumBorder(),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                height: SizeConfig.sizeMultiplier * 25,
                                width: SizeConfig.sizeMultiplier * 25,
                                child: Image.asset(AppAssets.femalepic),
                              ),
                            ),
                          ),
                          Text(
                            "Female",
                            style: AppTextStyle.boldTitleStyle(
                              color: selectedGender == "Female"
                                  ? AppColors.colorPrimary
                                  : AppColors.appBlack,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenheight * .05,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "How old are you ?",
                        style: AppTextStyle.boldTitleStyle(),
                      ),
                      SizedBox(
                        height: SizeConfig.screenheight * .05,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                shrinkWrap: true,
                                itemCount: ageGroupModel.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 1.8),
                                itemBuilder: (context, int index) {
                                  return InkWell(
                                    onTap: () async {
                                      final ageSelectionBloc =
                                          BlocProvider.of<AgeSelectionBloc>(
                                              context);
                                      ageSelectionBloc.add(
                                          AgeSelectionEvent.selectageGroup(
                                              ageGroups: ageGroupModel,
                                              selectedIndex: index));
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
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Image.network(
                                                  selectedGender == "Female"
                                                      ? ageGroupModel[index]
                                                          .fimageurl
                                                      : ageGroupModel[index]
                                                          .imageUrl),
                                            )),
                                        Flexible(
                                            fit: FlexFit.tight,
                                            flex: 3,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    ageGroupModel[index]
                                                        .groupName,
                                                    style: AppTextStyle
                                                        .commonTextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  Text(
                                                    ageGroupModel[index]
                                                        .groupRange,
                                                    style: AppTextStyle
                                                        .commonTextStyle(
                                                      fontSize: SizeConfig
                                                              .textMultiplier *
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
                                              padding: const EdgeInsets.only(
                                                  right: 8),
                                              child: Radio(
                                                value: selectedIndex,
                                                groupValue: index,
                                                onChanged: (value) async {},
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
                  SizedBox(
                    height: SizeConfig.sizeMultiplier * 18,
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<AgeSelectionBloc, AgeSelectionState>(
            builder: (context, state) {
              return Positioned(
                  bottom: SizeConfig.sizeMultiplier * 15,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: GradientButton(
                      width: SizeConfig.screenwidth * .8,
                      text: "Next",
                      onTap: () async {
                        var selectedGroup = state.whenOrNull(
                          success: (ageGroupModel, selectedIndex) =>
                              selectedIndex >= 0
                                  ? ageGroupModel[selectedIndex]
                                  : null,
                        );
                        if (selectedGroup != null) {
                          if (selectedGender.isNotEmpty) {
                            await selectAge(
                              agegroup: selectedGroup,
                              gender: selectedGender,
                            );
                          } else {
                            showSnackBar(
                                msg: "Please select your Gender.",
                                icons: Icons.warning,
                                iconcolor: Colors.amber,
                                time: 1);
                          }
                        } else {
                          showSnackBar(
                              msg: "Please select your age group.",
                              icons: Icons.warning,
                              iconcolor: Colors.amber,
                              time: 1);
                        }
                      },
                    ),
                  ));
            },
          )
        ],
      )),
    ));
  }

  Future<void> selectAge(
      {required AgeGroupModel agegroup, required String gender}) async {
    final personalSurveyBloc = BlocProvider.of<PersonalSurveyBloc>(context);
    personalSurveyBloc.add(
        PersonalSurveyEvent.fetchSurveyData(selectedAnsId: agegroup.groupId));
    await IsarServices().updateGender(gender: gender);

    await IsarServices().updateAge(agegroup: agegroup.groupRange);
    AppNavigator.pushNamed("/personalDetails");
    // AppNavigator.pushNamed("/avatarSelection");
  }
}
