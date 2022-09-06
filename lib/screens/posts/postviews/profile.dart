import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/basecontroller/basecontroller.dart';
import 'package:task1/customwidgets/profilecard.dart';
import 'package:task1/models/usermodel.dart';
import 'package:task1/screens/posts/postcontroller.dart';
import 'package:task1/sizeconfig/sizes.dart';

class Profile extends StatelessWidget with BaseController {
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<PostController>(
        init: PostController(),
        id: 'textId',
        initState: (_) {},
        builder: (_) => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24)),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(12),
                ),
                ProfileCard(
                  text1: 'Name',
                  text2: 'LoremIpsum',
                ),
                Divider(
                  color: Get.theme.colorScheme.onSecondary,
                ),
                ProfileCard(
                  text1: 'UserName',
                  text2: signInController.temp.toString(),
                ),
                Divider(
                  color: Get.theme.colorScheme.onSecondary,
                ),
                ProfileCard(
                  text1: 'Address',
                  text2: 'LoremIpsum',
                ),
                Divider(
                  color: Get.theme.colorScheme.onSecondary,
                ),
                ProfileCard(
                  text1: 'ZipCode',
                  text2: 'LoremIpsum',
                ),
                Divider(
                  color: Get.theme.colorScheme.onSecondary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
