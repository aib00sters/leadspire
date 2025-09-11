import 'package:flutter/material.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/button_widget.dart';
import '../widgets/questionnaire_item.dart'; // Adjust import path as needed

class SelectTopicPage extends StatefulWidget {
  const SelectTopicPage({super.key});

  @override
  State<SelectTopicPage> createState() => _SelectTopicPageState();
}

class _SelectTopicPageState extends State<SelectTopicPage> {
  final List<String> topics = [
    "Education",
    "Mental Help",
    "General Features",
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBGColor,
        body: Padding(
          padding:
              EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Select a Topic",
                style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 4,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: SizeConfig.sizeMultiplier * 4),
              Expanded(
                child: ListView.builder(
                  itemCount: topics.length,
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.sizeMultiplier * 12,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: QuestionnaireItem(
                        selected: selectedIndex == index,
                        text: topics[index],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: SizeConfig.sizeMultiplier * 8,
                  left: SizeConfig.sizeMultiplier * 8,
                  right: SizeConfig.sizeMultiplier * 8,
                ),
                child: GradientButton(
                  width: SizeConfig.screenwidth * .82,
                  text: "Continue",
                  onTap: () {
                    if (selectedIndex != -1) {
                      // Navigate based on selected topic or generic
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/couponPage', (Route<dynamic> route) => false);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text("Please select a topic."),
                          duration: const Duration(seconds: 1),
                          backgroundColor: Colors.amber,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
