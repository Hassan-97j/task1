import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task1/customwidgets/profilecard.dart';
import 'package:task1/screens/posts/postcontroller.dart';
import 'package:task1/sizeconfig/sizes.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var postController = Get.find<PostController>();
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
                  text2: postController.userModels[4].name,
                ),
                Divider(
                  color: Get.theme.colorScheme.onSecondary,
                ),
                ProfileCard(
                  text1: 'UserName',
                  text2: postController.userModels[4].username,
                ),
                Divider(
                  color: Get.theme.colorScheme.onSecondary,
                ),
                ProfileCard(
                  text1: 'Address',
                  text2: postController.userModels[4].address.street,
                ),
                Divider(
                  color: Get.theme.colorScheme.onSecondary,
                ),
                ProfileCard(
                  text1: 'ZipCode',
                  text2: postController.userModels[4].address.zipcode,
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
