import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/customwidgets/profilecard.dart';
import 'package:task1/sizeconfig/sizes.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
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
                text2: 'LoremIpsum',
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
    );
  }
}
