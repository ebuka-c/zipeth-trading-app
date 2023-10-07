import 'package:zipeth/data/search_traders_info.dart';
import 'package:zipeth/screens/traders/copy_traders.dart';
import 'package:zipeth/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/app_widgets.dart';
import '../../widgets/search_traders_card.dart';

class MirrorTrade extends StatefulWidget {
  const MirrorTrade({super.key});

  @override
  State<MirrorTrade> createState() => _MirrorTradeState();
}

class _MirrorTradeState extends State<MirrorTrade> {
  void updateList(String value) {}

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
                      text: 'Published Traders',
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
                            filled: true,
                            fillColor: AppColors.searchBar,
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: "Search for trader",
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
                  // itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => CopyTrader());
                      },
                      child: SearchTradersCard(
                        avatar: mirrorTrade[index]['avatar'].toString(),
                        width: width,
                        height: height,
                        name: mirrorTrade[index]['name'].toString(),
                        copyingFee: mirrorTrade[index]['copyingFee']
                            .toString()
                            .toUpperCase(),
                        followers: mirrorTrade[index]['followers'].toString(),
                        days: mirrorTrade[index]['days'].toString(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
