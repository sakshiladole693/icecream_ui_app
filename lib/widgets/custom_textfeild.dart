import 'package:flutter/material.dart';
import 'package:icecrem_app/util/constant.dart';

class CustomTextfeild extends StatelessWidget {
  final String text;
  final IconData prefix;
  final Color iconColor;
  final double borderRadius;
  const CustomTextfeild({
    super.key,
    required this.text,
    required this.prefix,
    this.iconColor = primaryColor,
    this.borderRadius = 25,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        cursorColor: primaryColor,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: dividerColor),
          prefixIcon: Icon(prefix, color: iconColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(width: 1, color: borderColor),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(width: 2, color: primaryColor),
          ),
        ),
      ),
    );
  }
}
