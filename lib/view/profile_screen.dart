import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icecrem_app/util/constant.dart';
import 'package:icecrem_app/widgets/custom_button.dart';
import 'package:icecrem_app/widgets/custom_dialog.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/ellipse1.png'),
          ),
          Positioned(
            top: 0,
            left: -22,
            child: Image.asset(height: 333, 'assets/images/banner_login.png'),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/ellipse2.png'),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Color.fromRGBO(138, 25, 214, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(Icons.arrow_back, color: white, size: 20),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 180,
            child: Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 55),
                      Text(
                        "Information",
                        style: GoogleFonts.sourceSans3(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: 0,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(child: textField(title: 'Name')),
                          const SizedBox(width: 15),
                          Expanded(child: textField(title: 'Nickname')),
                        ],
                      ),
                      const SizedBox(height: 15),
                      textField(title: 'E-mail'),
                      const SizedBox(height: 15),
                      textField(title: 'Password'),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(child: textField(title: 'Birth Date')),
                          const SizedBox(width: 15),
                          Expanded(child: textField(title: 'Telephone')),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(child: textField(title: 'Post')),
                          const SizedBox(width: 15),
                          Expanded(child: textField(title: 'Salary')),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(child: textField(title: 'City')),
                          const SizedBox(width: 15),
                          Expanded(child: textField(title: 'State')),
                        ],
                      ),
                      const SizedBox(height: 60),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              isIcon: false,
                              text: 'Cancel',
                              color: white,
                              textColor: primaryColor,
                              borderColor: white,
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return CustomDialog(
                                      color: white,
                                      title: "Profile edited!",
                                      subtitle: "Profile edited successfully",
                                      textColor: grey50,
                                      subtitleColor: grey800,
                                    );
                                  },
                                );
                              },
                              child: CustomButton(
                                isIcon: false,
                                text: 'Save',
                                color: primaryColor,
                                textColor: white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 105,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: primaryColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Image.asset('assets/images/girl1.png'),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 210,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: white, width: 5),
                color: primaryColor,
              ),
              child: Icon(Icons.edit_outlined, color: white),
            ),
          ),
        ],
      ),
    );
  }

  //custom Textfield
  Widget textField({required String title}) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: grey700, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.sourceSans3(
              color: grey600,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: TextField(
              cursorColor: grey700,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: grey100,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
