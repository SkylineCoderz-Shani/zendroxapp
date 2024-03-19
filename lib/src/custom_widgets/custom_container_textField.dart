import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zendroxapp/src/constants/colors.dart';

class CustomStyledTextField extends StatefulWidget {
  final String hintText;
  final Color? textColor; // Added textColor property
  final double containerHeight;
  final double containerWidth;
  final double borderRadius;
  final double boxShadowSpreadRadius;
  final double boxShadowBlurRadius;
  final Offset boxShadowOffset;
  final double textFieldBorderRadius;
  final EdgeInsetsGeometry contentPadding;
  final Color containerColor;
  final Color boxShadowColor;
  final Color textFieldBorderColor;
  final bool isPasswordField;
  final Widget? prefixIcon; // Added prefixIcon property
  final Widget? suffixIcon; // Added suffixIcon property

  const CustomStyledTextField({
    Key? key,
    required this.hintText,
    this.textColor= Colors.black,
    this.containerHeight = 62,
    this.containerWidth = double.infinity,
    this.borderRadius = 15,
    this.boxShadowSpreadRadius = 8,
    this.boxShadowBlurRadius = 20,
    this.boxShadowOffset = const Offset(4, 4),
    this.textFieldBorderRadius = 10,
    this.contentPadding = const EdgeInsets.all(12.0),
    this.containerColor = Colors.white,
    this.boxShadowColor = const Color(0xFFA0A0A0),
    this.textFieldBorderColor = Colors.black,
    this.isPasswordField = false,
    this.prefixIcon, // Added prefixIcon property
    this.suffixIcon,
    // Added suffixIcon property
  }) : super(key: key);

  @override
  _CustomStyledTextFieldState createState() => _CustomStyledTextFieldState();
}

class _CustomStyledTextFieldState extends State<CustomStyledTextField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.containerHeight,
      width: widget.containerWidth,
      decoration: BoxDecoration(
        border: Border.all(
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.circular(widget.borderRadius),
        // boxShadow: [
        //   BoxShadow(
        //     color: widget.boxShadowColor.withOpacity(0.2),
        //     spreadRadius: widget.boxShadowSpreadRadius,
        //     blurRadius: widget.boxShadowBlurRadius,
        //     offset: widget.boxShadowOffset,
        //   ),
        // ],
        color: widget.containerColor,
      ),
      child: TextFormField(
        obscureText: widget.isPasswordField && _isHidden,
        style: TextStyle(color: widget.textColor), // Use textColor property to set text color
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: textColor,
          ),
          focusColor: Colors.transparent,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.textFieldBorderRadius),
            borderSide: BorderSide(color: widget.textFieldBorderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.textFieldBorderRadius),
            borderSide: BorderSide(color: Color(0xffFC1717)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.textFieldBorderRadius),
            borderSide: BorderSide(color: Color(0xffFC1717)), // Set border color to transparent
          ),
          prefixIcon: widget.prefixIcon, // Added prefixIcon property
          suffixIcon: widget.isPasswordField
              ? IconButton(
            onPressed: _toggleVisibility,
            icon: Icon(
              _isHidden ? Icons.visibility : Icons.visibility_off,
              color: Color(0xff65656B),
            ),
          )
              : null,
        ),
      ),
    );
  }

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}