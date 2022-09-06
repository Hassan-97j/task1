import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/sizeconfig/sizes.dart';

class DefaultElevatedButton extends StatelessWidget {
  const DefaultElevatedButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        onPressed: press,
        child: Center(
          child: Text(
            text!,
            style: GoogleFonts.varelaRound(
              fontSize: getProportionateScreenWidth(18),
              color: Get.theme.scaffoldBackgroundColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
