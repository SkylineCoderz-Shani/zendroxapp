import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zendroxapp/src/custom_widgets/custom_image.dart';

import '../../../constants/colors.dart';
import '../../../custom_widgets/custom_button.dart';
import '../../../custom_widgets/custom_container_textField.dart';
import '../controllers/login_controller.dart';
import '../controllers/signup_controller.dart';

class ScreenLogin extends StatelessWidget {

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
            Text("log In", style: title2,).marginSymmetric(
              vertical: 12.sp,
            ),
            Text("Sign In to Continue", style: TextStyle(
              color: Color(0xffDB3550),
              fontSize: 20.sp,
              fontWeight: FontWeight.w200,
              fontFamily: 'inter',
            ),),
            CustomStyledTextField(
                hintText: "Email").marginSymmetric(
              vertical: 12.sp,
            ),
            CustomStyledTextField(
              hintText: "Password", isPasswordField: true,),
            CustomButton(
                buttonColor: lightButtonColor,
                text: "Login", onTap: () {}).marginSymmetric(
              vertical: 15.sp,
            ),
          ],
        ).marginSymmetric(
          horizontal: 15.sp,
        ),
      ),
    );
  }
}
