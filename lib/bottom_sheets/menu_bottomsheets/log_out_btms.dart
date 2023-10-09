import 'package:zipeth/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../values/colors.dart';

logOutBTMS(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: AppColors.walletBg,
          ),
          child: Wrap(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(top: 6, bottom: 8),
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.lightBtnColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 8),
                child: Text('Are you sure you want to log out?',
                    style: GoogleFonts.openSans(
                      color: Color(0xffefefef),
                      fontSize: 17.5,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, right: 20, left: 20, bottom: 25),
                child: Text(
                    'Email and password will be required when next you log in.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      color: Color(0xffefefef),
                      fontSize: 14.5,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: CustomButton(
                        btnWidth: 120,
                        btnHeight: 35,
                        btnColor: AppColors.plusBtnColor,
                        text: 'No, Cancel',
                        textWeight: FontWeight.w500,
                        textColor: AppColors.lightBtnColor),
                  ),
                  CustomButton(
                      btnWidth: 120,
                      btnHeight: 35,
                      btnColor: AppColors.lightBtnColor,
                      text: 'Yes, Log Out',
                      textWeight: FontWeight.w500,
                      textColor: AppColors.walletBg),
                ],
              ),
              const SizedBox(height: 30)
            ]),
          ]),
        );
      });
}
