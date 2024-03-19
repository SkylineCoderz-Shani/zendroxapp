import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zendroxapp/src/custom_widgets/custom_button.dart';
import 'package:zendroxapp/src/custom_widgets/custom_image.dart';
import 'package:zendroxapp/src/views/screens/screen_secureWallet.dart';

import '../../constants/colors.dart';
import '../../custom_widgets/custom_checkbox.dart';

class ScreenSecureWallet extends StatelessWidget {
  const ScreenSecureWallet({super.key});

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
                  "Secure Your Wallet",
                  style: subtitle2,
                ),
              ),
              CustomImage(
                name: "secure",
              ).marginSymmetric(
                vertical: 20.sp,
              ),
              RichText(
                text: TextSpan(
                    text:
                        "Don't risk losing your funds. protect your wallet by saving your seed phrase in a place you trust",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                          text:
                              " It's the only way to recover your wallet if you get locked out of the app or get a new device.",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                    ]),
              ).marginSymmetric(
                horizontal: 10.sp,
              ),
              CustomButton(
                  buttonColor: lightButtonColor,
                  text: "Remind Me Later",
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      builder: (context) {
                        return Container(
                          width: Get.width,
                          height: MediaQuery.of(context).size.height * 0.8,
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('What is a Seed phrase',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffF28602),
                                  )),
                              Text(
                                "A seed phrase is a set of twelve words that contains all the information about your wallet, including your funds. It's like a\nsecret code used to access your entire\nwallet.",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.black,
                                ),
                              ).marginSymmetric(
                                vertical: 10.sp,
                              ),
                              Text(
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.black,
                                  ),
                                  "You must keep your seed phrase secret and safe. If someone gets your seed phrase, they'll gain control over youraccounts."),
                              Text(
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.black,
                                      ),
                                      "Save it in a place where only you can access it. If you lose it, not even Zendrox can help you recover it.")
                                  .marginSymmetric(
                                vertical: 10.sp,
                              ),
                              CustomButton(
                                  buttonColor: darkButtonColor,
                                  text: "I Got It",
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      builder: (context) {
                                        return Container(
                                          width: Get.width,
                                          height:
                                              MediaQuery.of(context).size.height * 0.3,
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Skip Account Security?',
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  )),
                                              Row(
                                                children: [
                                                  CustomCheckbox(
                                                    value: true,
                                                    onChanged: (bool? value) {},
                                                  ),
                                                  SizedBox(
                                                    width: 8.sp,
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
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                fontSize: 16.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Color(
                                                                    0xffF28602),
                                                              )),
                                                        ]),
                                                  ),
                                                ],
                                              ).marginSymmetric(
                                                vertical: 10.sp,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  CustomButton(
                                                    width: Get.width*.4,
                                                      buttonColor:
                                                      darkButtonColor,
                                                      text: "Secure Now",
                                                      onTap: () {
                                                      Get.to(ScreenSecureWallet2());
                                                      }),
                                                  CustomButton(
                                                      width: Get.width*.4,
                                                      buttonColor:
                                                      darkButtonColor,
                                                      text: "Skip",
                                                      onTap: () {}),
                                                ],
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  }).paddingOnly(
                                top: 20.sp,
                              ),
                              CustomButton(
                                      buttonColor: darkButtonColor,
                                      text: "Start",
                                      onTap: () {})
                                  .paddingOnly(
                                top: 20.sp,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }).paddingOnly(
                top: 100.sp,
              ),
              CustomButton(
                      buttonColor: darkButtonColor, text: "Start", onTap: () {})
                  .paddingOnly(
                top: 20.sp,
              ),
            ],
          ).marginSymmetric(horizontal: 15.sp, vertical: 25.sp),
        ),
      ),
    );
  }
}
