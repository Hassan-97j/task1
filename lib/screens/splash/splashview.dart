import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/routes/pages.dart';
import 'package:task1/screens/splash/splashcontroller.dart';
import 'package:task1/sizeconfig/sizes.dart';

// ignore: must_be_immutable
class SplashView extends StatelessWidget {
  static String routeName = Pages.splash;
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var splashController = Get.find<SplashController>();
    SizeConfig().init(context);
    return GetBuilder<SplashController>(
        init: SplashController(),
        initState: (_) {
          Timer.run(() {
            Future.delayed(const Duration(seconds: 5), () {
              Get.toNamed(PagesNames.signinscreen);
            });
          });
        },
        builder: (_) => Scaffold(
              body: Center(
                child: AnimatedOpacity(
                  opacity: splashController.animation.value,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: getProportionateScreenWidth(24),
                      horizontal: getProportionateScreenWidth(14),
                    ),
                    alignment: Alignment.center,
                    width: SizeConfig.screenWidth * 0.8,
                    height: SizeConfig.screenHeight * 0.5,
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
                ),
              ),
            ));
  }
}
