import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/images_strings.dart';
import '../../custom_widgets/custom_image.dart';
import '../../features/authentication/screens/screen_signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => ScreenSignUp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: CustomImage(
                name: "splash_image",
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text("“Anonymous & secure wallet”", style: splashTitle,).marginSymmetric(
                vertical: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
