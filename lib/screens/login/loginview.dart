import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task1/customwidgets/formerror.dart';
import 'package:task1/customwidgets/mybutton.dart';
import 'package:task1/helper/keyboardhelper.dart';
import 'package:task1/routes/pages.dart';
import 'package:task1/screens/login/logincontroller.dart';
import 'package:task1/sizeconfig/sizes.dart';

import '../../customwidgets/mytextfield.dart';

// ignore: must_be_immutable
class SignInView extends StatelessWidget {
  static String routeName = Pages.signin;
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<SignInController>();
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(52),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(24),
                  horizontal: getProportionateScreenWidth(14),
                ),
                alignment: Alignment.center,
                width: SizeConfig.screenWidth * 0.6,
                height: SizeConfig.screenHeight * 0.3,
                decoration: BoxDecoration(
                  color: Get.theme.scaffoldBackgroundColor,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(8),
                  horizontal: getProportionateScreenWidth(10),
                ),
                child: Image.asset(
                  'assets/logo1.jpg',
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(32),
              ),
              GetBuilder<SignInController>(
                init: SignInController(),
                initState: (_) {},
                builder: (_) => Form(
                  key: Get.find<SignInController>().formKey,
                  child: Column(
                    children: [
                      MyTextField(
                        textfieldctrlr:
                           controller.emailController,
                        inputtype: TextInputType.name,
                        onsaved: (newValue) =>
                            controller.email = newValue,
                        onchanged: (value) {
                          controller.onEmailChange(value);
                        },
                        validation: (value) {
                          return controller
                              .usernameValidator(value);
                        },
                        labeltext: 'Username',
                        hinttext: 'Enter Username',
                        icons: Icons.mail,
                      ),
                      SizedBox(height: getProportionateScreenHeight(30)),
                      MyTextField(
                        inputtype: TextInputType.visiblePassword,
                        obscuretext: true,
                        onsaved: (newValue) =>
                           controller.password = newValue,
                        onchanged: (value) {
                         controller.onPasswordChange(value);
                        },
                        validation: (value) {
                          return controller.passwordValidator(value);
                        },
                        labeltext: 'Password',
                        hinttext: 'Enter Password',
                        icons: Icons.password,
                      ),
                      SizedBox(height: getProportionateScreenHeight(30)),
                      FormError(errors:controller.errors),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      DefaultElevatedButton(
                        text: 'Sign In',
                        press: () {
                          if (controller.formKey.currentState!
                              .validate()) {
                            controller.formKey.currentState!.save();
                            KeyboardUtil.hideKeyboard(context);
                            Get.toNamed(PagesNames.homescreen);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
            ],
          ),
        ),
      ),
    );
  }
}
