import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icecrem_app/util/constant.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final bool isIcon;
  final Widget? widget;
  const CustomButton({
    super.key,
    this.text,
    this.color = white,
    this.textColor = primaryColor,
    required this.isIcon,
    this.widget,
    this.borderColor = blue600,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Center(
        child: isIcon
            ? widget
            : Text(
                text ?? '',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  height: 1,
                  letterSpacing: 0,
                  color: textColor,
                ),
              ),
      ),
    );
  }
}
