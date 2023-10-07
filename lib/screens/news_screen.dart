import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';
import '../widgets/app_widgets.dart';

class ReadNews extends StatelessWidget {
  const ReadNews({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: height * 0.13,
          backgroundColor: AppColors.walletBg,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.lightBtnColor,
            ),
          ),
          title: CustomButton(
            btnColor: AppColors.darkBtnColor,
            btnWidth: width * 0.35,
            btnHeight: height * 0.065,
            text: 'News',
            textSize: height * 0.018,
            textWeight: FontWeight.bold,
            textColor: AppColors.lightBtnColor,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Container(
                height: height * 0.2,
                width: width * 0.95,
                color: AppColors.darkBtnColor,
                child: Image.asset(
                    'assets/images/loading.png'), //for network image
              ),
            ),
            Text(
              'How To Get Started With Zipeth',
              style: GoogleFonts.openSans(
                  color: AppColors.lightBtnColor,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
      ),
    );
  }
}
