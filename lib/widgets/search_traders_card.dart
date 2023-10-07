import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

class SearchTradersCard extends StatelessWidget {
  const SearchTradersCard(
      {super.key,
      required this.width,
      required this.height,
      required this.name,
      required this.copyingFee,
      required this.followers,
      required this.days,
      required this.avatar});

  final double width;
  final double height;
  final String name;
  final String copyingFee;
  final String followers;
  final String days;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.15,
      decoration: BoxDecoration(
        color: AppColors.walletBg,
        border: Border.all(color: AppColors.greyText, width: 0.05),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: width * 0.005),
              child: CircleAvatar(
                backgroundColor: AppColors.darkBtnColor,
                radius: width * 0.06,
                child: Image.asset(avatar),
              ),
            ),
            SizedBox(width: width * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(name,
                    style: GoogleFonts.openSans(
                      color: AppColors.lightBtnColor,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w500,
                    )),
                Text(copyingFee,
                    style: GoogleFonts.openSans(
                        color: AppColors.walletTexts,
                        fontSize: height * 0.013,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold)),
                Text(followers,
                    style: GoogleFonts.openSans(
                      color: AppColors.greenText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
                Text(days,
                    style: GoogleFonts.openSans(
                        color: AppColors.greyText,
                        fontSize: height * 0.02,
                        // letterSpacing: 1,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ],
        ),
        SizedBox(width: width * 0.25),
        Icon(Icons.arrow_forward,
            color: AppColors.lightBtnColor.withOpacity(0.6))
      ]),
    );
  }
}
