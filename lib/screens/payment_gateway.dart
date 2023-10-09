import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zipeth/screens/traders/copy_traders.dart';

import '../bottom_sheets/beneficiaryBTMS.dart';
import '../bottom_sheets/mirror_trade_BTMS.dart';
import '../data/search_traders_info.dart';
import '../values/colors.dart';
import '../widgets/app_widgets.dart';
import '../widgets/search_traders_card.dart';

class Companies extends StatelessWidget {
  const Companies({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.walletBg,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.03, left: width * 0.01),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: width * 0.02),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.16,
                    ),
                    CustomButton(
                      btnColor: AppColors.darkBtnColor,
                      btnWidth: width * 0.5,
                      btnHeight: height * 0.075,
                      text: 'Companies',
                      textSize: height * 0.018,
                      textWeight: FontWeight.bold,
                      textColor: AppColors.lightBtnColor,
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                margin: EdgeInsets.only(
                  left: width * 0.02,
                  right: width * 0.02,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.07,
                      child: TextField(
                        style: const TextStyle(color: AppColors.lightBtnColor),
                        cursorColor: AppColors.greyText,
                        decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                mirrorTradeBTMS(context);
                              },
                              child: Icon(
                                Icons.filter_list,
                                color: AppColors.lightBtnColor,
                                size: width * 0.08,
                              ),
                            ),
                            filled: true,
                            fillColor: AppColors.searchBar,
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: "Search for Company",
                            hintStyle: GoogleFonts.openSans(
                                color: AppColors.greyText,
                                fontSize: width * 0.043,
                                fontWeight: FontWeight.w500),
                            prefixIcon: Icon(Icons.search, size: width * 0.07),
                            prefixIconColor: AppColors.lightBtnColor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),

              //////////////////////
              SizedBox(
                height: height * 0.75,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: mirrorTrade.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          beneficiaryBTMS(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.015,
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Image.asset('assets/images/binance2.png'),
                            ),
                            title: Text(
                              'Jack Construction Company',
                              style: GoogleFonts.openSans(
                                  color: AppColors.lightBtnColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ));
                  },
                ),
              ),
              SizedBox(
                height: height * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
