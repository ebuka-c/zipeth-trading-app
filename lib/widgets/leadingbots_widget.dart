import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

class LeadingBots extends StatelessWidget {
  LeadingBots(
      {super.key,
      required this.width,
      required this.height,
      required this.userName,
      required this.percentage,
      required this.type,
      required this.madeBy});

  final double width;
  final double height;
  String userName;
  String percentage;
  String type;
  String madeBy;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      width: width * 0.9,
      height: height * 0.13,
      decoration: BoxDecoration(
          color: AppColors.darkBtnColor,
          borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.02, left: width * 0.075),
              child: Text(
                userName,
                style: GoogleFonts.openSans(
                  color: Color(0xffefefef),
                  // letterSpacing: height * 0.0015,
                  fontSize: height * 0.02,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.02, right: width * 0.075),
              child: Text(
                percentage,
                style: GoogleFonts.openSans(
                  color: AppColors.greenText,
                  // letterSpacing: height * 0.0015,
                  fontSize: height * 0.0233,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: height * 0.017,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.075),
              child: Text(
                madeBy,
                style: GoogleFonts.openSans(
                  color: AppColors.greyText,
                  // letterSpacing: height * 0.0015,
                  fontSize: height * 0.016,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(width: width * 0.19),
            Padding(
              padding: EdgeInsets.only(left: width * 0.075),
              child: Text(type,
                  style: GoogleFonts.openSans(
                    color: AppColors.greyText,
                    // letterSpacing: height * 0.0015,
                    fontSize: height * 0.0175,
                    fontWeight: FontWeight.w500,
                  )),
            )
          ],
        ),
      ]),
    );
  }
}

//userName = 'crvlongokxmanual',
//percentage = '36.64%',
//madeBy = 'Made by @hectorAlexander',
//type = 'CRV'