import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/bindings/splashbinding.dart';
import 'package:task1/routes/approutes.dart';
import 'package:task1/routes/pages.dart';
import 'package:task1/themes/mythemes/customtheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.lightTheme,
      initialBinding: SplashBinding(),
      initialRoute: PagesNames.splashscreen,
      getPages: appRoutes(),
    );
  }
}
