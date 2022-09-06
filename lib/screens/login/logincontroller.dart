// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/const/errorconst.dart';
import 'package:task1/models/usermodel.dart';
import 'package:task1/screens/posts/postcontroller.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];
  List<Users> k = [];

// bring error messages
  void addError({String? error}) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
    update();
  }

// clear error messages
  void removeError({String? error}) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
    update();
  }

//handle check box
  oncheckchange(value) {
    remember = value;
    update();
  }

//on changing password field
  onPasswordChange(value) {
    if (value.isNotEmpty) {
      removeError(error: ErrorText.kPassNullError);
    } else if (value.length >= 8) {
      removeError(error: ErrorText.kShortPassError);
    }
    update();
    return;
  }

//validate password
  passwordValidator(value) {
    if (value!.isEmpty) {
      addError(error: ErrorText.kPassNullError);
      return "";
    } else if (value.length < 8) {
      addError(error: ErrorText.kShortPassError);
      return "";
    }
    update();
    return;
  }

// on changing email field
  // onEmailChange(value) {
  //   if (value.isNotEmpty) {
  //     removeError(error: ErrorText.kEmailNullError);
  //   } else if (!GetUtils.isEmail(value)) {
  //     removeError(error: ErrorText.kInvalidEmailError);
  //   }
  //   update();
  //   return;
  // }

//validate email
  usernameValidator(value) {
    print(Get.find<PostController>().userModels);

    var s = Get.find<PostController>()
        .userModels
        .where(
          (element) =>
              element.username.toString().toLowerCase() ==
              value.toString().toLowerCase(),
        )
        .toList();
    if (s.isEmpty) {
      addError(error: ErrorText.kusernameNullError);
      return "";
    }
    print(s);
    update();
    return;
  }
}
