import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomImage extends StatelessWidget {
  String? name;
  double? height, width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$name.png",
      height: height,
      width: width,
    );
  }

  CustomImage({
    this.name,
    this.width,
    this.height,
  });
}
