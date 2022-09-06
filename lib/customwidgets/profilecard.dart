import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/sizeconfig/sizes.dart';

// ignore: must_be_immutable
class ProfileCard extends StatelessWidget {
  ProfileCard({
    Key? key,
    this.text1,
    this.text2,
  }) : super(key: key);
  String? text1;
  String? text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1!,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.bold,
              color: Get.theme.colorScheme.surface,
            ),
          ),
          Text(
            text2!,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.normal,
              color: Get.theme.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
