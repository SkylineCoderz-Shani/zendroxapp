import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final Widget? icon;
  final VoidCallback onTap;

  const CustomButton({
    this.height,
    this.width,
    required this.text,
    this.buttonColor,
    this.textColor,
    required this.onTap,
     this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 62,
        width: width ?? Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: buttonColor ?? appColor,
          boxShadow: appBoxShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: icon!,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
