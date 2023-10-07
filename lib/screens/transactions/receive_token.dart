import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../bottom_sheets/exchange_depositBTMS.dart';
import '../../values/colors.dart';

class ReceiveToken extends StatelessWidget {
  const ReceiveToken({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.walletBg,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back, color: AppColors.lightBtnColor),
          ),
          title: Text(
            'Receive Ethereum',
            style: GoogleFonts.openSans(
                color: AppColors.lightBtnColor, fontSize: width * 0.055),
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(
              child: Container(
                height: height * 0.4,
                width: width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(height * 0.02),
                  ),
                  color: AppColors.lightBtnColor,
                ),
              ),
            ),
            SizedBox(height: height * 0.17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: EdgeInsets.all(width * 0.04),
                    decoration: const BoxDecoration(
                      color: AppColors.blueIcon,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.copy_rounded,
                        color: AppColors.walletBg)),
                Container(
                    padding: EdgeInsets.all(width * 0.04),
                    decoration: const BoxDecoration(
                      color: AppColors.blueIcon,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.tag,
                        color: AppColors.walletBg.withOpacity(0.7))),
                Container(
                    padding: EdgeInsets.all(width * 0.04),
                    decoration: const BoxDecoration(
                      color: AppColors.blueIcon,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.share,
                        color: AppColors.walletBg.withOpacity(0.7)))
              ],
            ),
            SizedBox(height: height * 0.015),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text('Copy',
                  style: GoogleFonts.openSans(color: AppColors.blueIcon)),
              Text('Set Amount',
                  style: GoogleFonts.openSans(color: AppColors.blueIcon)),
              Text('Share',
                  style: GoogleFonts.openSans(color: AppColors.blueIcon))
            ]),
            SizedBox(height: height * 0.04),
            GestureDetector(
              onTap: () {
                depositBTMS(context);
              },
              child: Container(
                height: height * 0.11,
                width: width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(height * 0.02),
                  ),
                  border: Border.all(
                      color: AppColors.blueIcon, width: width * 0.003),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(width * 0.03),
                          decoration: const BoxDecoration(
                            color: AppColors.darkBtnColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.arrow_downward,
                              color: AppColors.blueIcon)),
                      Container(
                        margin: EdgeInsets.only(top: 2, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deposit from \nExchange',
                              style: GoogleFonts.openSans(
                                  color: AppColors.lightBtnColor,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'By direct transfer from \nyour account',
                              style: GoogleFonts.openSans(
                                  color: AppColors.greyText,
                                  fontSize: width * 0.032),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: AppColors.lightBtnColor,
                      )
                    ]),
              ),
            ),
            SizedBox(height: height * 0.02)
          ]),
        ),
      ),
    );
  }
}
