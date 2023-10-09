import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../values/colors.dart';

connectBTMS(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: AppColors.darkBtnColor,
          ),
          child: Wrap(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.only(top: 4, bottom: 4, left: 7),
                child: ListTile(
                  title: Text('Telegram',
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
                padding: EdgeInsets.only(top: 4, bottom: 4, left: 7),
                child: ListTile(
                  title: Text('Instagram',
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
                padding: EdgeInsets.only(top: 4, bottom: 4, left: 7),
                child: ListTile(
                  title: Text('Twitter',
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
                padding: EdgeInsets.only(top: 4, bottom: 4, left: 7),
                child: ListTile(
                  title: Text('Facebook',
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
                padding: EdgeInsets.only(top: 4, bottom: 4, left: 7),
                child: ListTile(
                  title: Text('Youtube',
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
                padding: EdgeInsets.only(top: 4, bottom: 4, left: 7),
                child: ListTile(
                  title: Text('Tiktok',
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
