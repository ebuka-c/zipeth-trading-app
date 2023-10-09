import 'package:zipeth/screens/transactions/qr_scanning/qr_scanner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../values/colors.dart';

class SendToken extends StatelessWidget {
  const SendToken({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.walletBg,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back, color: AppColors.lightBtnColor),
          ),
          title: Text(
            'Send Ethereum',
            style: GoogleFonts.openSans(
                color: AppColors.lightBtnColor, fontSize: width * 0.055),
          ),
          centerTitle: true,
          actions: [
            Text(
              'Continue'.toUpperCase(),
              style: GoogleFonts.openSans(color: AppColors.lightBtnColor),
            )
          ],
        ),
        body: Column(children: [
          SizedBox(height: height * 0.05),
          Padding(
            padding: EdgeInsets.only(left: width * 0.06, right: width * 0.06),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                // color: AppColors.greyText
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary: AppColors.blueIcon,
                      ),
                ),
                child: TextFormField(
                  // controller: controller.textEditingController,
                  style: const TextStyle(color: AppColors.blueIcon),
                  decoration: InputDecoration(
                      labelText: 'Token address or name...',
                      hintStyle: GoogleFonts.openSans(
                          color: AppColors.lightBtnColor, fontSize: 12),
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
                          borderSide:
                              const BorderSide(color: AppColors.lightBtnColor)),
                      ////////////suffix icons
                      suffixIcon: GestureDetector(
                        onTap: () {
                          Get.to(() => const QRScanner());
                        },
                        child: const Icon(
                          Icons.qr_code_scanner_rounded,
                          color: AppColors.blueIcon,
                        ),
                      ),
                      suffix: Text(
                        'PASTE',
                        style: GoogleFonts.openSans(
                            color: AppColors.blueIcon, fontSize: width * 0.04),
                      )),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.05),
          Padding(
            padding: EdgeInsets.only(left: width * 0.06, right: width * 0.06),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                // color: AppColors.greyText
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary: AppColors.blueIcon,
                      ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: AppColors.blueIcon),
                  decoration: InputDecoration(
                    labelText: 'Amount',
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
                        borderSide:
                            const BorderSide(color: AppColors.lightBtnColor)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.07),
          Container(
            margin: EdgeInsets.only(right: width * 0.65),
            child: Text(
              'OPTIONAL',
              style: GoogleFonts.openSans(
                color: AppColors.blueIcon.withOpacity(0.6),
              ),
            ),
          ),
          SizedBox(height: height * 0.05),
          Padding(
            padding: EdgeInsets.only(left: width * 0.06, right: width * 0.06),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                // color: AppColors.greyText
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary: AppColors.blueIcon,
                      ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: AppColors.blueIcon),
                  decoration: InputDecoration(
                    labelText: 'Memo',
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
                        borderSide:
                            const BorderSide(color: AppColors.lightBtnColor)),
                    //suffix icon
                    suffixIcon: GestureDetector(
                      onTap: () {
                        Get.to(() => const QRScanner());
                      },
                      child: const Icon(
                        Icons.qr_code_scanner_rounded,
                        color: AppColors.blueIcon,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
