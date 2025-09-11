import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/login_module/widgets/login_background.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../utilities/app_navigator.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/error_widget.dart';
import '../blocs/avatar_list_bloc/avatars_list_bloc.dart';
import '../blocs/personal_survey_bloc/personal_survey_bloc.dart';

class PersonalSurveyPage extends StatefulWidget {
  const PersonalSurveyPage({super.key});

  @override
  State<PersonalSurveyPage> createState() => _PersonalSurveyPageState();
}

class _PersonalSurveyPageState extends State<PersonalSurveyPage> {
  late AnimationController mController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBGColor,
        body: ScreenSetter(
          child: LoginBackgroundWidget(
            child: BlocBuilder<PersonalSurveyBloc, PersonalSurveyState>(
              builder: (context, state) {
                return state.when(
                  error: (errorMessage) => const CustomErrorWidget(),
                  initial: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (questionnaireModel, answerList, selectedAnswer,
                      surveyResult, showButton) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: SizeConfig.heightMultiplier * 25,
                              ),
                              Text(
                                questionnaireModel.title,
                                style: AppTextStyle.largeTitleStyle(),
                              ),
                              const SizedBox(
                                height: 100,
                              ),
                              Column(
                                children: [
                                  Text(
                                    questionnaireModel.subTitle,
                                    style: AppTextStyle.titleTextStyle(),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Wrap(
                                      alignment: WrapAlignment.center,
                                      children: answerList
                                          .map((e) => InkWell(
                                                onTap: () {
                                                  final personalSurveyBloc =
                                                      BlocProvider.of<
                                                              PersonalSurveyBloc>(
                                                          context);
                                                  personalSurveyBloc.add(
                                                      PersonalSurveyEvent
                                                          .changeQuestion(
                                                              questionnaireModel:
                                                                  questionnaireModel,
                                                              answerList:
                                                                  answerList,
                                                              surveyResult:
                                                                  surveyResult,
                                                              selectedAnswer:
                                                                  e));
                                                },
                                                child: Card(
                                                  clipBehavior: Clip.hardEdge,
                                                  elevation: 0,
                                                  color: e == selectedAnswer
                                                      ? AppColors.colorPrimary
                                                      : Colors.white,
                                                  shape: const StadiumBorder(
                                                      side: BorderSide(
                                                    color:
                                                        AppColors.colorPrimary,
                                                  )),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 10,
                                                        horizontal: 20),
                                                    child: Text(
                                                      e.answer,
                                                      style: AppTextStyle
                                                          .commonTextStyle(
                                                        color: e ==
                                                                selectedAnswer
                                                            ? AppColors.appWhite
                                                            : AppColors
                                                                .appBlack,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ).animate(
                                                onInit: (controller) {
                                                  mController = controller;
                                                },
                                                effects: [
                                                  const FadeEffect(
                                                    duration: Duration(
                                                        milliseconds: 500),
                                                  ),
                                                  const SlideEffect(
                                                      begin: Offset(2, 0),
                                                      duration: Duration(
                                                          milliseconds: 400))
                                                ],
                                              ))
                                          .toList()),
                                ],
                              ),
                            ],
                          ),
                          if (showButton)
                            Container(
                              margin: EdgeInsets.only(
                                bottom: SizeConfig.sizeMultiplier * 15,
                              ),
                              child: GradientButton(
                                text: "Next",
                                onTap: () async {
                                  final avatarBloc =
                                      BlocProvider.of<AvatarsListBloc>(context);
                                  await IsarServices()
                                      .saveSurveyData(surveyResult);

                                  avatarBloc.add(
                                      const AvatarsListEvent.getAvatar(
                                          gender: ""));
                                  AppNavigator.pushNamed("/avatarSelection");
                                },
                              ),
                            ),
                        ],
                        // children: AnimateList(
                        //   interval: const Duration(milliseconds: 100),
                        //   effects: [
                        //     const FadeEffect(
                        //         duration: Duration(milliseconds: 500)),
                        //     const SlideEffect(
                        //         begin: Offset(2, 0),
                        //         duration: Duration(milliseconds: 400))
                        //   ],
                        //   children:
                        //       surveyModel.surveyData[surveyIndex].options
                        //           .map((e) => Card(
                        //                 child: Text(e),
                        //               ))
                        //           .toList(),
                        // ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
