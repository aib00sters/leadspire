import 'dart:io';
import 'dart:typed_data';
import 'dart:developer' as dev;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/utilities/size_config.dart';
import '../modules/login_module/blocs/login_bloc/login_bloc.dart';
import '../modules/login_module/blocs/username_validation_bloc/username_validation_bloc.dart';
import '../widgets/button_widget.dart';
import 'app_navigator.dart';

Future<File> convertToJPEG(
    {required Uint8List imageBytes, required String filename}) async {
  // final directory = Platform.isAndroid
  //     ? await getExternalStorageDirectory() //FOR ANDROID
  //     : await getApplicationSupportDirectory(); //FOR IOS
  final Directory directory = await getApplicationDocumentsDirectory();
  final path = directory.path;

  // var timeStamp = "image${DateTime.now().millisecondsSinceEpoch}";
  // Create a new file in the document directory
  final file = File('$path/$filename.jpg');

  await file.writeAsBytes(imageBytes, flush: true);
  return file;
}

getCurrentDate(String date) {
  return DateFormat('dd-MMM-yyyy').format(DateTime.parse(date));
}

getCurrentTime(String date) {
  return DateFormat('hh:mm').format(DateTime.parse(date));
}

String getImagePath(int index) {
  List<String> images = [
    AppAssets.activityImage1,
    AppAssets.activityImage2,
    AppAssets.activityImage3,
  ];
  return images[index % 3];
}

Future<bool> requestPermission(Permission permission) async {
  final status = await permission.request();
  if (status.isGranted) {
    return true;
  } else {
    return false;
  }
}

void showEditNameDialog({
  required String? image,
  required String? name,
  required String? userName,
  required BuildContext context,
  required String action,
}) {
  if (userName!.isNotEmpty) {
    final validateBloc = BlocProvider.of<UsernameValidationBloc>(context);
    validateBloc.add(UsernameValidationEvent.validate(userName: userName));
  }
  TextEditingController textEditingController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  textEditingController.text = name!;
  userNameController.text = userName;
  showDialog(
    context: context,
    builder: (context) {
      GlobalKey<FormState> formKey = GlobalKey<FormState>();
      textEditingController.clear();
      userNameController.clear();
      return AlertDialog(
        scrollable: true,
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: SizeConfig.sizeMultiplier * 25,
                width: SizeConfig.sizeMultiplier * 25,
                child: Image.network(image!, fit: BoxFit.cover),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: "Name",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 215, 212, 212)),
                  isCollapsed: true,
                ),
                autofocus: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xff1f3d58),
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field can't be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<UsernameValidationBloc, UsernameValidationState>(
                  builder: (context, state) {
                return Column(
                  children: [
                    TextFormField(
                      controller: userNameController,
                      decoration: InputDecoration(
                        hintText: "User Name",
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 215, 212, 212)),
                        isCollapsed: true,
                        suffix: state.whenOrNull(
                          loading: () => const SizedBox(
                            height: 15,
                            width: 15,
                            child: Center(
                                child: CircularProgressIndicator(
                              strokeWidth: 3,
                            )),
                          ),
                        ),
                      ),
                      autofocus: true,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xff1f3d58),
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                      onChanged: (value) {
                        final validateBloc =
                            BlocProvider.of<UsernameValidationBloc>(context);
                        validateBloc.add(
                            UsernameValidationEvent.validate(userName: value));
                      },
                      onEditingComplete: () {},
                    ),
                    Row(
                      children: [
                        Text(
                          state.whenOrNull(
                                validationError: (errorMsg) => errorMsg,
                              ) ??
                              "",
                          style:
                              const TextStyle(fontSize: 12, color: Colors.red),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GradientButton(
                      enable: state.whenOrNull(
                        success: (fcmToken, userName) => true,
                      ),
                      width: 100,
                      height: 30,
                      text: "Done",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          if (userNameController.text.isNotEmpty) {
                            state.whenOrNull(
                              success: (fcmToken, userName) {
                                if (action == 'login') {
                                  final loginBloc =
                                      BlocProvider.of<LoginBloc>(context);
                                  loginBloc.add(LoginEvent.login(
                                    name: textEditingController.text,
                                    profileImage: image,
                                    userName: userNameController.text,
                                  ));
                                  textEditingController.clear();
                                  userNameController.clear();
                                } else {
                                  final loginBloc =
                                      BlocProvider.of<LoginBloc>(context);
                                  loginBloc.add(LoginEvent.changeUserName(
                                    name: textEditingController.text,
                                    profileImage: image,
                                    userName: userNameController.text,
                                  ));
                                }

                                Navigator.pop(context);
                              },
                            );
                          } else {
                            final validateBloc =
                                BlocProvider.of<UsernameValidationBloc>(
                                    context);
                            validateBloc.add(UsernameValidationEvent.validate(
                                userName: userNameController.text));
                          }
                        }
                      },
                    )
                  ],
                );
              })
            ],
          ),
        ),
      );
    },
  );
}

void printer(String value) {
  if (kDebugMode) {
    dev.log(value);
  }
}

showSnackBar({
  required String msg,
  required IconData icons,
  required Color iconcolor,
  required int time,
}) {
  final snackbar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.white,
    margin: const EdgeInsets.only(bottom: 20),
    duration: Duration(seconds: time),
    content: SizedBox(
      width: SizeConfig.screenwidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: SizeConfig.widthMultiplier * 75,
            child: Text(
              msg,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(
            icons,
            color: iconcolor,
          )
        ],
      ),
    ),
  );
  scaffoldMsgKey.currentState?.showSnackBar(snackbar);
}

class Item {
  final String? name;
  final String? imageUrl;
  final String? type;
  final String? id;

  Item({
    required this.name,
    required this.imageUrl,
    required this.type,
    required this.id,
  });
}
