import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class SmallText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? fontSize;

  const SmallText({
    required this.text,
    this.textColor,
    this.textAlign,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: fontSize ?? 18.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: textColor ?? Colors.grey,
      ),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}

class LargeText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;

  const LargeText({
    required this.text,
    this.textColor,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
            fontSize: fontSize ?? 16.sp,
            fontWeight: fontWeight ?? FontWeight.w500,
            color: textColor ?? Colors.black,

      ),
    );
  }
}
