import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zendroxapp/src/custom_widgets/custom_image.dart';

import '../../../views/screens/screen_homepage.dart';
import '../../constants/colors.dart';
import '../../custom_widgets/custom_button.dart';

class ScreenCongratulation extends StatelessWidget {
  const ScreenCongratulation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.transparent,
          ),
          toolbarHeight: 10.sp,
        ),
        body: Column(
          children: [
            CustomImage(
              name: "heart",
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Write Down Your Seed Phrase",
                style: subtitle2,
              ),
            ).marginSymmetric(
              vertical: 10.sp,
            ),
            Text(
              "you've successfully pro texted your wallet. Remember to keep your seed phrase safe, it's your responsibility!",
              style: subtitle1,
            ).marginSymmetric(
              vertical: 15.sp,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Write Down Your Seed Phrase",
                style:GoogleFonts.inter(
              fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: Color(0xff016E89),
              ),
              ),
            ).marginSymmetric(
              vertical: 10.sp,
            ),
            Text(
              "Zendrox cannot recover your wallet if you lose it. You can find your seed phrase in",
              style: subtitle1,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Setting > Security & Privacy", style: GoogleFonts.inter(
                fontWeight: FontWeight.w900,
                fontSize: 14.sp,
              ),),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Learn More", style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w900,
                fontSize: 16.sp,
                  color: Color(0xff016E89)
              ),),
            ).marginSymmetric(
              vertical: 6.sp,
            ),
            Spacer(),
            CustomButton(
                buttonColor: lightButtonColor,
                text: "Continue", onTap: () {
                  Get.to(ScreenHomePage());
            }).marginSymmetric(
              vertical: 15.sp,
            ),
          ],
        ).marginSymmetric(horizontal: 15.sp,vertical: 25.sp),
      ),
    );
  }
}
