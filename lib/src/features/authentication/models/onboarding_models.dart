import 'package:flutter/material.dart';

class OnBoardingModel {
  String image;
  String title;
  String subtitle;
  String counterText;
  Color bgColor;
  double size;
  OnBoardingModel(
      {
    required this.image,
    required this.title,
    required this.subtitle,
    required this.bgColor,
    required this.size,
    required this.counterText,
  }
  );
}
