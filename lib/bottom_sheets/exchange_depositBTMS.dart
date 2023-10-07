import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

depositBTMS(context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return Container(
          width: width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: AppColors.walletBg,
          ),
          child: Wrap(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 6, bottom: 8, left: 25),
                height: 5,
                width: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.lightBtnColor),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 35, top: 25, right: 150, bottom: 25),
                child: Text('Deposit from exchange',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.openSans(
                      color: AppColors.blueIcon,
                      fontSize: 14.5,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              //////
              Container(
                height: height * 0.11,
                width: width * 0.85,
                margin: EdgeInsets.only(left: 30),
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
                          padding: EdgeInsets.all(width * 0.02),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 4, 9, 14),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/images/binance2.png')),
                      Container(
                        margin: EdgeInsets.only(top: 2, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Binance',
                              style: GoogleFonts.openSans(
                                  color: AppColors.lightBtnColor,
                                  fontSize: width * 0.042,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Deposit from your \nBinance account',
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
              SizedBox(height: 30)
            ]),
          ]),
        );
      });
}
