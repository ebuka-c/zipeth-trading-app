import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

class HomeCard extends StatelessWidget {
  HomeCard(
      {super.key,
      required this.height,
      required this.width,
      required this.text1,
      required this.text2});

  final double height;
  final double width;
  String text1;
  String? text2;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 12, left: 9),
        width: width * 0.9,
        height: height * 0.25,
        decoration: BoxDecoration(
            color: AppColors.homeCard, borderRadius: BorderRadius.circular(16)),
        child: Padding(
            padding: EdgeInsets.only(left: width * 0.07, top: height * 0.018),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: width * 0.3),
                  child: Text(
                    text1,
                    style: GoogleFonts.openSans(
                      color: AppColors.lightBtnColor,
                      letterSpacing: height * 0.001,
                      fontSize: height * 0.027,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.08),
                Text(
                  text2!,
                  style: GoogleFonts.openSans(
                    color: AppColors.lightBtnColor,
                    decoration: TextDecoration.underline,
                    // decorationStyle: TextDecorationStyle.double,
                    decorationColor: AppColors.lightBtnColor,
                    decorationThickness: 4,
                    // letterSpacing: height * 0.001,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )));
  }
}

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.btnWidth,
      required this.btnHeight,
      required this.btnColor,
      required this.text,
      required this.textColor,
      this.textSpacing,
      this.textSize,
      this.textWeight,
      this.icon,
      this.suffixIcon});

  final double btnWidth;
  final double btnHeight;
  final Color btnColor;
  String text;
  Color textColor;
  double? textSpacing;
  double? textSize;
  FontWeight? textWeight;
  Widget? icon;
  Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: btnWidth,
      height: btnHeight,
      // width: width * 0.3,
      // height: height * 0.06,
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.all(
          Radius.circular(height * 20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: icon),
          Center(
            child: Text(
              text,
              style: GoogleFonts.openSans(
                  color: textColor,
                  letterSpacing: textSpacing,
                  fontSize: textSize,
                  fontWeight: textWeight),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.005), child: suffixIcon,
            // Icon(
            //   Icons.keyboard_arrow_down,
            //   color: AppColors.lightBtnColor,
            // ),
          )
        ],
      ),
    );
  }
}
