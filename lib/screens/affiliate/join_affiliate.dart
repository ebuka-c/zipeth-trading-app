import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../values/colors.dart';
import '../../widgets/app_widgets.dart';

class JoinAffiliate extends StatelessWidget {
  const JoinAffiliate({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.walletBg,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child:
                        Icon(Icons.arrow_back, color: AppColors.lightBtnColor),
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
            ),
          )
        ]),
      ),
    );
  }
}
