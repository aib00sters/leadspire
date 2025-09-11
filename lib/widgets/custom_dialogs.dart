import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/app_colors.dart';
import '../utilities/size_config.dart';
import 'button_widget.dart';

typedef OnTap<T> = Function(T);

class CheckInDialog extends StatefulWidget {
  final String text;
  const CheckInDialog({
    required this.text,
    super.key,
  });

  @override
  State<CheckInDialog> createState() => _CheckInDialogState();
}

class CustomButton {
  final GestureTapCallback onTap;
  final String text;

  CustomButton({
    required this.onTap,
    required this.text,
  });
}

class CustomDialogWidget extends StatelessWidget {
  final CustomButton? leftButton;
  final CustomButton? rightButton;
  final String title;
  final String content;
  const CustomDialogWidget(
      {super.key,
      required this.title,
      required this.content,
      this.leftButton,
      this.rightButton});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(SizeConfig.sizeMultiplier * 5.1)),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xff1f3d58),
            fontWeight: FontWeight.w600,
            height: 1.2,
          ),
        ),
        content: Text(
          content,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Color(0xff1f3d58),
            fontWeight: FontWeight.w500,
            height: 1.2,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 3.2,
                vertical: SizeConfig.widthMultiplier),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (leftButton != null)
                    Expanded(
                        child: ElevatedButton(
                      onPressed: leftButton!.onTap,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0x99F44336)),
                      child: Text(
                        leftButton!.text,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.widthMultiplier * 4.2,
                            height: 1.2,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                  const SizedBox(
                    width: 10,
                  ),
                  if (rightButton != null)
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          onPressed: rightButton!.onTap,
                          child: Text(
                            rightButton!.text,
                            style: TextStyle(
                                color: Colors.white,
                                height: 1.2,
                                fontSize: SizeConfig.widthMultiplier * 4.2,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                ]),
          )
        ],
      ),
    );
  }
}

class SaveDialog extends StatefulWidget {
  final OnTap onSave;
  final String defaultName;
  const SaveDialog({
    super.key,
    required this.onSave,
    required this.defaultName,
  });

  @override
  State<SaveDialog> createState() => _SaveDialogState();
}

class _CheckInDialogState extends State<CheckInDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.sizeMultiplier * 5.1)),
      title: Text(
        widget.text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xff1f3d58),
          fontWeight: FontWeight.w600,
          height: 1.2,
        ),
      ),
      content: Lottie.asset('assets/images/green-tick.json'),
    );
  }
}

class _SaveDialogState extends State<SaveDialog> {
  TextEditingController textEditingController = TextEditingController();
  late String fileName;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(SizeConfig.sizeMultiplier * 5.1)),
        title: const Text(
          "Save As",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xff1f3d58),
            fontWeight: FontWeight.w600,
            height: 1.2,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        content:
         Form(
          key: formKey,
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              isCollapsed: true,
            ),
            autofocus: true,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Color(0xff1f3d58),
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "This field can't be empty";
              }
              return null;
            },
          ),
        ),
        actions: [
          Column(
            children: [

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 3.2,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: OutlinedButton.styleFrom(
                            fixedSize: const Size(0, 38),
                            side: const BorderSide(
                                color: AppColors.colorPrimary,
                                width: 1,
                                style: BorderStyle.solid),
                            shape: const StadiumBorder()),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              color: AppColors.appBlack,
                              fontSize: SizeConfig.widthMultiplier * 4.2,
                              height: 1.2,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: GradientButton(
                            height: 38,
                            // style: ElevatedButton.styleFrom(
                            //   backgroundColor: Colors.green,
                            // ),
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                widget.onSave(textEditingController.text);
                              }
                            },
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  color: Colors.white,
                                  height: 1.2,
                                  fontSize: SizeConfig.widthMultiplier * 4.2,
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                    ]),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    setState(() {
      textEditingController.text = widget.defaultName;
    });
    textEditingController.selection = TextSelection(
        baseOffset: 0, extentOffset: textEditingController.text.length);
    super.initState();
  }
}

