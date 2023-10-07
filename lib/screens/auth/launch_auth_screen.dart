import 'package:zipeth/screens/auth/login/email_login.dart';
import 'package:zipeth/screens/auth/register/email_registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zipeth/widgets/app_widgets.dart';

import '../../values/colors.dart';

class LaunchAuth extends StatelessWidget {
  const LaunchAuth({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColors.primaryBg,
            AppColors.secondaryBg,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // stops: [0.1, 1],
        )),
        child: Container(
          margin: EdgeInsets.only(
              top: height * 0.2, left: width * 0.03, right: 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '    Zipeth',
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: AppColors.lightBtnColor),
              ),
              SizedBox(height: height * 0.02),
              Container(
                margin: EdgeInsets.only(right: width * 0.09),
                child: Text(
                  'Launch a hedge fund level trading bot for yourself in 5 minutes or less.',
                  style: GoogleFonts.roboto(
                      fontSize: height * 0.04,
                      fontWeight: FontWeight.w300,
                      color: AppColors.lightBtnColor),
                ),
              ),
              SizedBox(height: height * 0.07),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => EmailReg());
                      },
                      child: CustomButton(
                        btnColor: AppColors.lightBtnColor,
                        btnWidth: width * 0.8,
                        btnHeight: height * 0.07,
                        icon: Container(
                          margin: EdgeInsets.only(right: width * 0.03),
                          child: Image.asset(
                            'assets/icons/user.png',
                            color: Colors.grey,
                            scale: 0.7,
                          ),
                        ),
                        text: 'Sign Up With Email',
                        // textSpacing: height * 0.002,
                        textSize: height * 0.022,
                        textWeight: FontWeight.w400,
                        textColor: AppColors.darkBtnColor,
                      ),
                    ),
                    SizedBox(height: height * 0.025),
                    Text('Or',
                        style: GoogleFonts.openSans(
                          color: Color(0xffefefef),
                          // letterSpacing: height * 0.002,
                          fontSize: height * 0.025,
                        )),
                    SizedBox(height: height * 0.025),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => EmailLogin());
                      },
                      child: CustomButton(
                        btnColor: Colors.yellow.shade500,
                        btnWidth: width * 0.8,
                        btnHeight: height * 0.07,
                        text: 'Already Registered? Login',
                        // textSpacing: height * 0.002,
                        textSize: height * 0.022,
                        textWeight: FontWeight.w400,
                        textColor: AppColors.darkBtnColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
