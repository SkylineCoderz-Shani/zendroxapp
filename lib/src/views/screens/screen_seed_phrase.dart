import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zendroxapp/src/constants/colors.dart';
import 'package:zendroxapp/src/custom_widgets/custom_button.dart';
import 'package:zendroxapp/src/views/screens/screen_secure_wallet.dart';

import '../../custom_widgets/custom_checkbox.dart';
import '../../custom_widgets/custom_container_textField.dart';
import '../../custom_widgets/custom_password_confirmation_field.dart';
import '../../custom_widgets/custom_switchButton.dart';
import '../../custom_widgets/custom_textfield_check.dart';

class ScreenPhrase extends StatelessWidget {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create Password",
                  style: subtitle2,
                ),
              ),
              Text(
                "This password will unlock your Zendrox wallet only on this service",
                style: subtitle1.copyWith(
                  color: Colors.grey,
                ),
              ),
              Column(
                children: [
                  CustomPasswordConfirmationField(
                    isPasswordField: true,
                    hintText: 'New Password',
                  ),
                  Row(
                    children: [
                      Text(
                        "Password strength:",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontFamily: 'inter',
                        ),
                      ),
                      Text(
                        "Good",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 16.sp,
                          fontFamily: 'inter',
                        ),
                      ),
                    ],
                  ).marginSymmetric(
                    horizontal: 17.sp,
                  )
                ],
              ).marginSymmetric(
                vertical: 30.sp,
              ),
              Column(
                children: [
                  CustomPasswordConfirmationField(
                    isPasswordField: true,
                    hintText: 'Confirm Password',
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Must be at least 8 characters",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontFamily: 'inter',
                      ),
                    ),
                  ).marginSymmetric(horizontal: 17.sp),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sign in with Face ID?",
                    style: subtitle3,
                  ),
                  ReminderSwitch(),
                ],
              ).marginSymmetric(
                vertical: 15.sp,
              ),
              Row(
                children: [
                  CustomCheckbox(
                    value: true,
                    onChanged: (bool? value) {},
                  ),
                  RichText(
                    text: TextSpan(
                        text:
                            "I understand that Zendrox cannot recover this\npassword for me.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text: " Learn more",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffF28602),
                              )),
                        ]),
                  ).marginSymmetric(
                    horizontal: 10.sp,
                  ),
                ],
              ),
              CustomButton(
                  buttonColor: darkButtonColor,
                  text: "Create Password",
                  onTap: () {
                    Get.to(ScreenSecureWallet());
                  }).paddingOnly(
                top: 160.sp,
              ),
            ],
          ).marginSymmetric(horizontal: 15.sp, vertical: 25.sp),
        ),
      ),
    );
  }
}
