import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';
import '../widgets/app_widgets.dart';

copyBotBTMS(context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
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
                margin: const EdgeInsets.only(top: 6, bottom: 8),
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.lightBtnColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Close',
                        style: GoogleFonts.openSans(
                            color: AppColors.lightBtnColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, right: 8),
                child: Text('Enter Your Settings to Continue',
                    style: GoogleFonts.openSans(
                      color: const Color(0xffefefef),
                      fontSize: 18.5,
                      fontWeight: FontWeight.w500,
                    )),
              ), ////////////
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.08,
                    right: width * 0.08,
                    top: height * 0.03,
                    bottom: height * 0.015),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.02),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                            primary: AppColors.primaryBg,
                          ),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'CAPITAL*',
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.02),
                          borderSide: const BorderSide(
                            color: AppColors.primaryBg,
                            width: 2.0,
                          ),
                        ),
                        labelStyle: const TextStyle(color: AppColors.greyText),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.02),
                            borderSide:
                                const BorderSide(color: AppColors.primaryBg)),
                      ),
                    ),
                  ),
                ),
              ), //////////////
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.08,
                    right: width * 0.08,
                    top: height * 0.03,
                    bottom: height * 0.05),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.02),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                            primary: AppColors.primaryBg,
                          ),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'EXCHANGE*',
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.02),
                          borderSide: const BorderSide(
                            color: AppColors.primaryBg,
                            width: 2.0,
                          ),
                        ),
                        labelStyle: const TextStyle(color: AppColors.greyText),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.02),
                            borderSide:
                                const BorderSide(color: AppColors.primaryBg)),
                        suffixIcon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: CustomButton(
                        btnWidth: 160,
                        btnHeight: 50,
                        btnColor: AppColors.lightBtnColor,
                        text: 'Cancel & Go Back',
                        textWeight: FontWeight.w500,
                        textColor: AppColors.walletBg),
                  ),
                  CustomButton(
                      btnWidth: 160,
                      btnHeight: 50,
                      btnColor: AppColors.plusBtnColor,
                      text: 'Confirm & Begin',
                      textWeight: FontWeight.w500,
                      textColor: AppColors.lightBtnColor),
                ],
              ),
              const SizedBox(height: 130)
            ]),
          ]),
        );
      });
}
