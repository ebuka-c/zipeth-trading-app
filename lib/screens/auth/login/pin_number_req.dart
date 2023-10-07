import 'package:zipeth/screens/mainscreens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../values/colors.dart';

//fix box decoration and input decoration later
class PINRequest extends StatelessWidget {
  const PINRequest({super.key});

  final String requiredPin = '1234';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

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
          margin: EdgeInsets.only(top: height * 0.3),
          child: Column(
            children: [
              Text(
                'Enter Your Pin',
                style: GoogleFonts.roboto(
                  color: Color(0xffefefef),
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: height * 0.03),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.14, right: width * 0.14),
                child: Text(
                    'Sign into your existing account and manage your trading bots',
                    style: GoogleFonts.roboto(
                      color: Color(0xffefefef),
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center),
              ),
              SizedBox(height: height * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.15, vertical: height * 0.05),
                child: PinCodeTextField(
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 4,
                  onChanged: (value) {
                    print(value);
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(2),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    inactiveColor: Colors.purple,
                    activeColor: Colors.orange,
                    selectedColor: Colors.brown,
                  ),
                  onCompleted: (value) {
                    if (value == requiredPin) {
                      //required pin is set to 1234 before build context
                      Get.to(() => const HomeScreen());
                    } else {
                      print('incorrect pin');
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
