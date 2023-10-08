import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../values/colors.dart';
import '../../widgets/app_widgets.dart';

class JoinAffiliate extends StatelessWidget {
  const JoinAffiliate({super.key});

  @override
  Widget build(BuildContext context) {
    String data = '';

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.walletBg,
            body: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(Icons.arrow_back,
                              color: AppColors.lightBtnColor),
                        ),
                      ),
                      CustomButton(
                        btnColor: AppColors.darkBtnColor,
                        btnWidth: width * 0.35,
                        btnHeight: height * 0.065,
                        text: 'Invite & Earn',
                        textSize: height * 0.018,
                        textWeight: FontWeight.bold,
                        textColor: AppColors.lightBtnColor,
                      ),
                      Container(
                        width: width / 9.999,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, right: 220, bottom: 20),
                  child: Icon(
                    Icons.share,
                    color: AppColors.lightBtnColor,
                  ),
                ),
                Text(
                  'Make Money Through Referrals',
                  style: GoogleFonts.openSans(
                      color: AppColors.lightBtnColor,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.04),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: AppColors.lightBtnColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: QrImageView(
                      data: data,
                    ),
                  ),
                ),
                const Text(
                  'YOUR REFERRAL LINK',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.06, right: width * 0.06),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      // color: AppColors.greyText
                    ),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: ThemeData().colorScheme.copyWith(
                              primary: AppColors.greyText,
                            ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: AppColors.blueIcon),
                        decoration: InputDecoration(
                          labelText: 'link to be copied',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.02),
                            borderSide: const BorderSide(
                              color: AppColors.blueIcon,
                              width: 1.0,
                            ),
                          ),
                          labelStyle: GoogleFonts.openSans(
                              color: AppColors.lightBtnColor, fontSize: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(width * 0.02),
                              borderSide: const BorderSide(
                                  color: AppColors.lightBtnColor)),
                          //suffix icon
                          suffixIcon: GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.copy,
                              color: AppColors.greyText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.05, bottom: height * 0.01),
                  child: Text(
                    'Referral State',
                    style: GoogleFonts.openSans(
                        color: AppColors.lightBtnColor,
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.04),
                  ),
                ),
                Container(
                  height: height * 0.11,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: AppColors.darkBtnColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        child: Column(
                          children: [
                            Text(
                              'DIRECT REFERRALS',
                              style: GoogleFonts.openSans(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyText,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              '0',
                              style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greyText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        child: Column(
                          children: [
                            Text(
                              'DIRECT REFERRALS',
                              style: GoogleFonts.openSans(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyText,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              '0',
                              style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greyText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.012,
                ),
                Container(
                  height: height * 0.11,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: AppColors.darkBtnColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height * 0.02, horizontal: width * 0.05),
                        child: Column(
                          children: [
                            Text(
                              'TOTAL TEAM',
                              style: GoogleFonts.openSans(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyText,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              '0',
                              style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greyText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        child: Column(
                          children: [
                            Text(
                              'TOTAL ACTIVE TEAM',
                              style: GoogleFonts.openSans(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyText,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              '0',
                              style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greyText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.05, bottom: height * 0.01),
                  child: Text(
                    'Network Leaders',
                    style: GoogleFonts.openSans(
                        color: AppColors.lightBtnColor,
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.04),
                  ),
                ),
                Container(
                  height: height * 0.11,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: AppColors.darkBtnColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        child: Column(
                          children: [
                            Text(
                              'DIRECT REFERRALS',
                              style: GoogleFonts.openSans(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyText,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              '0',
                              style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greyText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        child: Column(
                          children: [
                            Text(
                              'DIRECT REFERRALS',
                              style: GoogleFonts.openSans(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyText,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              '0',
                              style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greyText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.012,
                ),
                Container(
                  height: height * 0.11,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: AppColors.darkBtnColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: height * 0.02,
                              horizontal: width * 0.05),
                          child: Column(
                            children: [
                              Text(
                                'TOTAL TEAM',
                                style: GoogleFonts.openSans(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.greyText,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Text(
                                '0',
                                style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.greyText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ]),
            )));
  }
}
