import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomIcon extends StatelessWidget {
  String? name;
  double? height, width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/$name.png",
      height: height,
      width: width,
    );
  }

  CustomIcon({
    this.name,
    this.width,
    this.height,
  });
}
