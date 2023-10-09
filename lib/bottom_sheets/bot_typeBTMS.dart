import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

botTypeBTMS(context) {
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
                padding: const EdgeInsets.only(top: 10, bottom: 3, left: 7),
                child: ListTile(
                  title: Text('Futures Trend',
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
                padding: const EdgeInsets.only(top: 3, bottom: 3, left: 7),
                child: ListTile(
                  title: Text('Futures Martingale',
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
                padding: const EdgeInsets.only(top: 3, bottom: 3, left: 7),
                child: ListTile(
                  title: Text('Spot Martingale',
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
                padding: const EdgeInsets.only(top: 3, bottom: 3, left: 7),
                child: ListTile(
                  title: Text('Futures NeuralNet',
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
                padding: const EdgeInsets.only(top: 3, bottom: 3, left: 7),
                child: ListTile(
                  title: Text('Spot NeuralNet',
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
              const SizedBox(
                height: 20,
              )
            ]),
          ]),
        );
      });
}
