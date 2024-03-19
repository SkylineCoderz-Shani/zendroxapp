import 'package:flutter/material.dart';
import 'package:zendroxapp/views/screens/screen_homepage.dart';

import '../../src/constants/colors.dart';
import '../../src/custom_widgets/custom_image.dart';

class ScreenSplash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ScreenHomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: CustomImage(name: "splash_image"),
      ),
    );
  }
}
