import 'package:zipeth/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bottom_sheets/trader_botsBTMS.dart';
import '../../widgets/app_widgets.dart';

class CopyTrader extends StatelessWidget {
  const CopyTrader({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.walletBg,
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
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
                  text: 'Eric',
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
          CircleAvatar(
              radius: width * 0.12,
              backgroundColor: AppColors.deepBtnColor,
              child: Image.asset('assets/icons/users.png')),
          Padding(
            padding: EdgeInsets.only(top: height * 0.03, bottom: height * 0.01),
            child: Text('AVERAGE PROFIT YIELDED THIS MONTH',
                style: GoogleFonts.openSans(
                    color: AppColors.walletTexts,
                    fontSize: height * 0.013,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height * 0.02),
            child: Text('+67.98%',
                style: GoogleFonts.openSans(
                    color: AppColors.greenText,
                    fontSize: height * 0.05,
                    fontWeight: FontWeight.w300)),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: height * 0.03,
              left: width * 0.02,
              right: width * 0.02,
            ),
            child: Text(
                'Hi! I\'m a successful Zipeth trader since December 2022. By copying my Mirrors and joining my trading team, you\'ll receive the support you need to be making substantial profits. I follow the safe and secure system (Auto-Level 2.0) to grow your funds',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.w400)),
          ),
          CustomButton(
              btnWidth: width * 0.7,
              btnHeight: height * 0.05,
              btnColor: Colors.lightBlue.shade700,
              text: '    Join My Telegram Group',
              textWeight: FontWeight.w600,
              icon: Image.asset('assets/images/telegram.png'),
              textColor: Colors.white),
          SizedBox(height: height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width * 0.45,
                height: height * 0.09,
                decoration: BoxDecoration(
                    color: AppColors.darkBtnColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '2%',
                        style: GoogleFonts.openSans(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Bot Copying Fee'.toUpperCase(),
                        style: TextStyle(
                            color: AppColors.greyText,
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w700),
                      ),
                    ]),
              ),
              Container(
                width: width * 0.45,
                height: height * 0.09,
                decoration: BoxDecoration(
                    color: AppColors.darkBtnColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '846',
                        style: GoogleFonts.openSans(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'TOTAL FOLLOWERS',
                        style: TextStyle(
                            color: AppColors.greyText,
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w700),
                      ),
                    ]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bots Available for Copying',
                    style: GoogleFonts.openSans(
                        color: AppColors.lightBtnColor,
                        fontSize: height * 0.018,
                        fontWeight: FontWeight.w400)),
                GestureDetector(
                  onTap: () {
                    traderBots(context);
                  },
                  child: const Icon(
                    Icons.filter_list,
                    color: AppColors.lightBtnColor,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: width * 0.9,
            height: height * 0.18,
            decoration: BoxDecoration(
                color: AppColors.darkBtnColor,
                borderRadius: BorderRadius.circular(15)),
          )
        ])),
      ),
    ));
  }
}
