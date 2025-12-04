import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icecrem_app/util/constant.dart';
import 'package:icecrem_app/widgets/custom_button.dart';

class CustomDialog extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final Color textColor;
  final Color subtitleColor;
  final double titleSize;

  final double width;
  const CustomDialog({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.textColor,
    required this.subtitleColor,
    this.titleSize = 16,
    this.width = 180,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Container(
        width: width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            const BoxShadow(color: grey50, blurRadius: 5, offset: Offset(0, 3)),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.close,
                        color: Color.fromRGBO(5, 21, 50, 1),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Icon(Icons.check, size: 45, color: white),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: titleSize,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: subtitleColor,
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: primaryColor,
                          behavior: SnackBarBehavior.floating,
                          content: Text(
                            'You Profile Edited Successfully.',
                            style: GoogleFonts.sourceCodePro(
                              color: white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      );
                    },
                    child: CustomButton(
                      isIcon: false,
                      borderColor: blue600,
                      color: primaryColor,
                      text: 'Continue',
                      textColor: white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
