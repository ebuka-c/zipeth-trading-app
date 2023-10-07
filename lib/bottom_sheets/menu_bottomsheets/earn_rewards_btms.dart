import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../values/colors.dart';

rewardsBottomSheet(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: AppColors.darkBtnColor,
          ),
          child: Wrap(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10, left: 7),
                child: ListTile(
                  title: Text('Rewards Dashboard',
                      style: GoogleFonts.openSans(
                          fontSize: 16.5,
                          color: AppColors.lightBtnColor,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Divider(
                  height: 1,
                  indent: 10,
                  endIndent: 10,
                  color: AppColors.greyText.withOpacity(0.5)),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10, left: 7),
                child: ListTile(
                  title: Text('Referrals Dashboard',
                      style: GoogleFonts.openSans(
                          fontSize: 16.5,
                          color: AppColors.lightBtnColor,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Divider(
                  height: 1,
                  indent: 10,
                  endIndent: 10,
                  color: AppColors.greyText.withOpacity(0.5)),
              SizedBox(
                height: 20,
              )
            ]),
          ]),
        );
      });
}
