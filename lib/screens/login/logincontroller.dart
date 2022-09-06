import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/const/errorconst.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

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
  onEmailChange(value) {
    if (value.isNotEmpty) {
      removeError(error: ErrorText.kEmailNullError);
    } else if (!GetUtils.isEmail(value)) {
      removeError(error: ErrorText.kInvalidEmailError);
    }
    update();
    return;
  }

//validate email
  emailValidator(value) {
    if (value!.isEmpty) {
      addError(error: ErrorText.kEmailNullError);
      return "";
    } else if (!GetUtils.isEmail(value)) {
      addError(error: ErrorText.kInvalidEmailError);
      return "";
    }
    update();
    return;
  }
}
