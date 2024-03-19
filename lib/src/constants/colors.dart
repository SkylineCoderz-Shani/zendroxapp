import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Color appColor = Colors.red;
Color backgroundColor = Colors.white;
Color lightButtonColor = Color(0xffFF7976);
Color darkButtonColor = Color(0xffFF4956);
Color textColor = Colors.black;
Color LargeTextColor = Color(0xffDB3550);
Color iconColor = Colors.black;
Color navBarColor = Color(0xffFFE2D6);
Color activeNavBarColor = Color(0xff447784);
Color switchButtonColor = Color(0xffDB3550);
Color transactionColor = Color(0xffF1885C);
Color appBarColor = Color(0xffF1885C);
Color moneyDetailsContainerColor = Color(0xffF10F0F);

TextStyle title1 = GoogleFonts.inter(
  fontWeight: FontWeight.w900,
  fontSize: 20,
  color: LargeTextColor,
);
TextStyle title2 = GoogleFonts.inter(
  fontWeight: FontWeight.w900,
  fontSize: 36.sp,
  color: LargeTextColor,
);
TextStyle splashTitle = GoogleFonts.inter(
  fontWeight: FontWeight.w700,
  fontSize: 15.sp,
  color: textColor,
);

TextStyle subtitle1 = GoogleFonts.inter(
  fontWeight: FontWeight.w600,
  fontSize: 16.sp,
  color: Colors.black,
);
TextStyle subtitle3 = GoogleFonts.inter(
  fontWeight: FontWeight.w400,
  fontSize: 18.sp,
  color: Colors.black,
);
TextStyle subtitle4 = GoogleFonts.inter(
  fontWeight: FontWeight.w400,
  fontSize: 14.sp,
  color: Colors.black,
);
TextStyle subtitle2 = GoogleFonts.inter(
  fontWeight: FontWeight.w600,
  fontSize: 18.sp,
  color: Color(0xffDB3550),
);

Decoration roundedDec = BoxDecoration(
  borderRadius: BorderRadius.circular(30),
  color: appColor,
);

BoxShadow myShadow = BoxShadow(color: Colors.red);
List<BoxShadow> appBoxShadow = [
  BoxShadow(blurRadius: 1, color: Colors.grey.shade300),
];
