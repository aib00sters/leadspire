import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/age_selection_bloc/age_selection_bloc.dart';
import 'package:wellbeings/modules/login_module/widgets/login_background.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:wellbeings/widgets/error_widget.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_navigator.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';
import '../../../widgets/button_widget.dart';
import '../blocs/questionnaire_bloc/questionnaire_bloc.dart';
import '../widgets/questionnaire_item.dart';

class QuestionnairePage extends StatefulWidget {
  const QuestionnairePage({super.key});

  @override
  State<QuestionnairePage> createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  final List<String> options = [
    "Change thoughts",
    "Calm anxiety",
    "Be happier",
    "Reduce stress",
    "Track mood",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.appBGColor,
      body: LoginBackgroundWidget(
        child: BlocConsumer<QuestionnaireBloc, QuestionnaireState>(
          listener: (context, state) {},
          buildWhen: (previous, current) =>
              current != const QuestionnaireState.initial(),
          builder: (context, state) {
            return state.when(
              error: (errorMessage) => const CustomErrorWidget(),
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (questionnaire, answerList, selectedIndex) => Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 6,
                      ),
                      Text(
                        "Welcome ",
                        style:
                            TextStyle(fontSize: SizeConfig.textMultiplier * 5),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      // Image.network(
                      //   questionnaire.imageUrl,
                      //   height: SizeConfig.sizeMultiplier * 43,
                      // ),
                      // SizedBox(
                      //   height: SizeConfig.sizeMultiplier * 7,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            questionnaire.title,
                            style: AppTextStyle.largeTitleStyle(),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            questionnaire.subTitle,
                            style: AppTextStyle.titleTextStyle(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.sizeMultiplier * 7,
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: answerList.length,
                          padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.sizeMultiplier * 12,
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                final qnBloc =
                                    BlocProvider.of<QuestionnaireBloc>(context);
                                qnBloc.add(QuestionnaireEvent.selectItem(
                                    questionnaireModel: questionnaire,
                                    answerList: answerList,
                                    selectedIndex: index));
                              },
                              child: QuestionnaireItem(
                                selected: selectedIndex == index,
                                text: answerList[index].answer,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.sizeMultiplier * 30,
                      ),
                    ],
                  ),
                  Positioned(
                      bottom: SizeConfig.sizeMultiplier * 15,
                      right: 0,
                      left: 0,
                      child: Center(
                        child: GradientButton(
                          width: SizeConfig.screenwidth * .82,
                          text: "Next",
                          onTap: () {
                            if (selectedIndex != -1) {
                              final ageSelectionBloc =
                                  BlocProvider.of<AgeSelectionBloc>(context);
                              ageSelectionBloc
                                  .add(const AgeSelectionEvent.fetchAgeGroup());
                              AppNavigator.pushNamed('/selectGender');
                            } else {
                              showSnackBar(
                                  msg: "Please select an option.",
                                  icons: Icons.warning,
                                  iconcolor: Colors.amber,
                                  time: 1);
                            }
                          },
                        ),
                      ))
                ],
              ),
            );
          },
        ),
      ),
    ));
  }
}
