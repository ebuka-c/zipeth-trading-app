import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

class TokenListTile extends StatelessWidget {
  const TokenListTile(
      {super.key,
      required this.width,
      required this.height,
      required this.balance,
      required this.subtitle1,
      required this.subtitle2,
      required this.title});

  final double width;
  final double height;
  final String title;
  final String subtitle1;
  final String subtitle2;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.11,
      decoration: BoxDecoration(
          color: AppColors.walletBg,
          border: Border(
              bottom: BorderSide(
                  width: height * 0.001, color: AppColors.greyText))),
      child: ListTile(
        leading: Container(
          margin: EdgeInsets.only(top: height * 0.02),
          padding: EdgeInsets.only(left: width * 0.0001, right: width * 0.0001),
          child: CircleAvatar(
            radius: width * 0.07,
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.openSans(
              fontSize: width * 0.04,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
        subtitle: Row(
          children: [
            Text(
              subtitle1,
              style: TextStyle(
                  color: AppColors.greyText,
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.035),
            ),
            SizedBox(width: width * 0.02),
            Text(
              subtitle2,
              style: GoogleFonts.openSans(
                  color: AppColors.greenText,
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.035),
            )
          ],
        ),
        trailing: Text(balance,
            style: GoogleFonts.openSans(
                fontSize: width * 0.04,
                color: Colors.white,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
