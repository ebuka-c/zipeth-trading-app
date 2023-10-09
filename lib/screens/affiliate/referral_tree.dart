import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../values/colors.dart';
import '../../widgets/app_widgets.dart';

class ReferralTree extends StatefulWidget {
  const ReferralTree({super.key});

  @override
  State<ReferralTree> createState() => _ReferralTreeState();
}

class _ReferralTreeState extends State<ReferralTree> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.walletBg,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.03, left: width * 0.01),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: width * 0.02),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.16,
                    ),
                    CustomButton(
                      btnColor: AppColors.darkBtnColor,
                      btnWidth: width * 0.5,
                      btnHeight: height * 0.075,
                      text: 'Your Referral Tree',
                      textSize: height * 0.018,
                      textWeight: FontWeight.bold,
                      textColor: AppColors.lightBtnColor,
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                margin: EdgeInsets.only(
                  left: width * 0.02,
                  right: width * 0.02,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.07,
                      child: TextField(
                        style: const TextStyle(color: AppColors.lightBtnColor),
                        cursorColor: AppColors.greyText,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.searchBar,
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: "Search username",
                            hintStyle: GoogleFonts.openSans(
                                color: AppColors.greyText,
                                fontSize: width * 0.043,
                                fontWeight: FontWeight.w500),
                            prefixIcon: Icon(Icons.search, size: width * 0.07),
                            prefixIconColor: AppColors.lightBtnColor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: Row(
                  children: [
                    Text(
                      '1ST GENERATION',
                      style: GoogleFonts.openSans(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.1),
              //////////////////////
              Text(
                'You do not have any referrals.',
                style: GoogleFonts.openSans(
                    color: AppColors.lightBtnColor,
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.04),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.03),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CustomButton(
                      btnWidth: width * 0.4,
                      btnHeight: height * 0.05,
                      btnColor: AppColors.plusBtnColor,
                      textSize: width * 0.04,
                      text: 'Refer Now',
                      textWeight: FontWeight.bold,
                      textColor: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
