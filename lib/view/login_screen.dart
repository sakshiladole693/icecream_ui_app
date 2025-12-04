import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icecrem_app/util/constant.dart';
import 'package:icecrem_app/view/home_screen.dart';
import 'package:icecrem_app/widgets/custom_button.dart';
import 'package:icecrem_app/widgets/custom_textfeild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            top: 134,
            left: 20,
            child: Text(
              'Sorveteria',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                letterSpacing: 0,
                color: white,
              ),
            ),
          ),

          Positioned(
            top: 170,
            left: 20,
            child: Text(
              'Faca or login to access the area\nSorveteria administration.',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                letterSpacing: 0,
                color: white,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 280,
            child: Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.sourceSans3(
                          fontWeight: FontWeight.w600,
                          fontSize: 26,
                          letterSpacing: 0,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomTextfeild(
                        text: 'Enter your Email',
                        prefix: Icons.email_outlined,
                      ),
                      const SizedBox(height: 20),
                      CustomTextfeild(
                        text: 'Enter your Paasword',
                        prefix: Icons.lock_outlined,
                      ),
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forget Password?',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: CustomButton(
                          isIcon: false,
                          text: 'Log in',
                          textColor: white,
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(width: 110, height: 1, color: borderColor),
                          Text(
                            '  Or  ',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: googleTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(width: 110, height: 1, color: dividerColor),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        isIcon: true,
                        widget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              height: 20,
                              width: 20,
                              'assets/images/google.png',
                            ),
                            Text(
                              '  Google',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 0,
                                color: googleTextColor,
                              ),
                            ),
                          ],
                        ),
                        textColor: white,
                        borderColor: borderColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
