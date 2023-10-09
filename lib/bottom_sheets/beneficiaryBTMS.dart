import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zipeth/widgets/app_widgets.dart';

import '../values/colors.dart';

beneficiaryBTMS(context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: AppColors.walletBg,
                ),
                child: Wrap(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 6, bottom: 8),
                          height: 5,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.lightBtnColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Text(
                                  'Close',
                                  style: GoogleFonts.openSans(
                                    color: const Color(0xffefefef),
                                    // letterSpacing: height * 0.001,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'Beneficiary Relationship',
                          style: GoogleFonts.openSans(
                              color: AppColors.lightBtnColor, fontSize: 20),
                        ),
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
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  suffixIcon: Image.asset(
                                    'assets/icons/users.png',
                                    color: AppColors.greyText,
                                  ),
                                  labelText: 'Benefactor Name',
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.start,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                    borderSide: const BorderSide(
                                      color: AppColors.primaryBg,
                                      width: 2.0,
                                    ),
                                  ),
                                  labelStyle: const TextStyle(
                                      color: AppColors.greyText),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(width * 0.02),
                                      borderSide: const BorderSide(
                                          color: AppColors.primaryBg)),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelText: 'Benefactor Position',
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.start,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                    borderSide: const BorderSide(
                                      color: AppColors.primaryBg,
                                      width: 2.0,
                                    ),
                                  ),
                                  labelStyle: const TextStyle(
                                      color: AppColors.greyText),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(width * 0.02),
                                      borderSide: const BorderSide(
                                          color: AppColors.primaryBg)),
                                  suffixIcon: const Icon(
                                    Icons.people,
                                    color: AppColors.greyText,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ), ///////
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.08,
                              right: width * 0.08,
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
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelText: 'Benefactor Hash',
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.start,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                    borderSide: const BorderSide(
                                      color: AppColors.primaryBg,
                                      width: 2.0,
                                    ),
                                  ),
                                  labelStyle: const TextStyle(
                                      color: AppColors.greyText),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(width * 0.02),
                                      borderSide: const BorderSide(
                                          color: AppColors.primaryBg)),
                                  suffixIcon: const Icon(
                                    Icons.tag,
                                    color: AppColors.greyText,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                            btnWidth: width * 0.3,
                            btnHeight: height * 0.05,
                            btnColor: AppColors.plusBtnColor,
                            text: 'Submit',
                            textWeight: FontWeight.w500,
                            textColor: AppColors.lightBtnColor),
                        SizedBox(
                          height: height * 0.2,
                        )
                      ]),
                ]),
              ),
            ),
          ),
        );
      });
}
