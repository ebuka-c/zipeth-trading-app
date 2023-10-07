import 'package:zipeth/screens/transactions/receive_token.dart';
import 'package:zipeth/screens/transactions/send_token.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../values/colors.dart';

class TokenActions extends StatelessWidget {
  const TokenActions({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.walletBg,
      appBar: AppBar(
        backgroundColor: AppColors.walletBg,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColors.greyText,
          ),
        ),
        title: Text(
          'Ethereum',
          style: GoogleFonts.openSans(
              color: AppColors.greyText,
              fontSize: width * 0.05,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width * 0.035),
            child: Icon(Icons.show_chart, color: AppColors.greyText),
          )
        ],
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.037),
          child: Container(
            margin: EdgeInsets.only(top: height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Coin'.toUpperCase(),
                    style: GoogleFonts.openSans(
                        color: AppColors.greyText,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w400)),
                Row(
                  children: [
                    Text('\$1,638.52',
                        style: GoogleFonts.openSans(
                            color: AppColors.greyText,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w400)),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.01),
                      child: Text('-0.68%',
                          style: GoogleFonts.openSans(
                              color: Colors.red[100],
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: height * 0.013),
        Image.asset(
          'assets/icons/crypto.png',
          scale: 0.5,
        ),
        SizedBox(height: height * 0.013),
        Text(
          '1 ETH',
          style: GoogleFonts.openSans(
              color: AppColors.greyText,
              fontSize: width * 0.06,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(height: height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              //send
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SendToken());
                    },
                    child: Container(
                        padding: EdgeInsets.all(width * 0.035),
                        decoration: const BoxDecoration(
                          color: AppColors.blueIcon,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.arrow_upward,
                            color: AppColors.walletBg.withOpacity(0.7))),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Send',
                    style: GoogleFonts.openSans(
                        color: AppColors.blueIcon,
                        fontWeight: FontWeight.w700,
                        fontSize: width * 0.035),
                  )
                ],
              ),
            ),
            SizedBox(
              //receive
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ReceiveToken());
                    },
                    child: Container(
                        padding: EdgeInsets.all(width * 0.035),
                        decoration: BoxDecoration(
                          color: AppColors.blueIcon,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.arrow_downward,
                            color: AppColors.walletBg.withOpacity(0.7))),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Receive',
                    style: GoogleFonts.openSans(
                        color: AppColors.blueIcon,
                        fontWeight: FontWeight.w700,
                        fontSize: width * 0.035),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(width * 0.035),
                      decoration: BoxDecoration(
                        color: AppColors.blueIcon,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.wallet_outlined,
                          color: AppColors.walletBg.withOpacity(0.7))),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Buy',
                    style: GoogleFonts.openSans(
                        color: AppColors.blueIcon,
                        fontWeight: FontWeight.w700,
                        fontSize: width * 0.035),
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: height * 0.03),
                Container(
                    padding: EdgeInsets.all(width * 0.035),
                    decoration: BoxDecoration(
                      color: AppColors.blueIcon,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.money,
                        color: AppColors.walletBg.withOpacity(0.7))),
                SizedBox(height: height * 0.01),
                Text(
                  'Payment',
                  style: GoogleFonts.openSans(
                      color: AppColors.blueIcon,
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.035),
                ),
                Text(
                  'Gateway',
                  style: GoogleFonts.openSans(
                      color: AppColors.blueIcon,
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.035),
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Divider(
            color: AppColors.greyText,
          ),
        ),
        Center(
          child: Text('Transactions will appear here',
              style: GoogleFonts.openSans(
                color: AppColors.greyText,
              )),
        )
      ]),
    );
  }
}
