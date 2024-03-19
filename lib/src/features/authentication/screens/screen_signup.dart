import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zendroxapp/src/features/authentication/screens/screen_login.dart';

import '../../../constants/colors.dart';
import '../../../custom_widgets/custom_button.dart';
import '../../../custom_widgets/custom_container_textField.dart';
import '../../../custom_widgets/custom_image.dart';
import '../../../views/screens/screen_seed_phrase.dart';

class ScreenSignUp extends StatelessWidget {

  ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              name: "splash_image",
            ),
            Text("Create a New\n      Account", style: title2,).marginSymmetric(
              vertical: 12.sp,
            ),
            CustomStyledTextField(
                hintText: "Enter your Email"),
            CustomStyledTextField(
                hintText: "Enter a Password").marginSymmetric(
              vertical: 12.sp,
            ),
            CustomStyledTextField(
              hintText: "Confirm a Password", isPasswordField: true,),
            CustomButton(
                buttonColor: lightButtonColor,
                text: "SIGN UP", onTap: () {}).marginSymmetric(
              vertical: 15.sp,
            ),
            GestureDetector(
              onTap: (){
                Get.to(ScreenLogin());
              },
              child: Text("Already have an account?", style: subtitle1,).marginSymmetric(
                vertical: 15.sp,
              ),
            ),
            GestureDetector(
                onTap: (){
                  Get.to(ScreenPhrase());
                },
                child: Text("Enter Your Seed Phrase", style: subtitle2,)),

          ],
        ).marginSymmetric(
          horizontal: 15.sp,
        ),
      ),
    );
  }
}
