import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/sizeconfig/sizes.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index]!)),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        Icon(
          Icons.error,
          color: Get.theme.colorScheme.secondary,
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(
          error,
          style: TextStyle(
            color: Get.theme.colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
