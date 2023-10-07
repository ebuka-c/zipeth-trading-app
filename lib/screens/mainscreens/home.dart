import 'package:zipeth/bottom_sheets/news_btmsheet.dart';
import 'package:zipeth/data/moretrading_options_info.dart';
import 'package:zipeth/screens/mainscreens/get_license.dart';
import 'package:zipeth/screens/mainscreens/wallet2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zipeth/values/colors.dart';
import '../../bottom_sheets/menu_bottomsheets/menu_bottomsheet.dart';
import '../../bottom_sheets/plus_icon_btmsheet.dart';
import '../../data/home_bots_info.dart';
import '../../widgets/app_widgets.dart';
import '../../widgets/leadingbots_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final _controller = PageController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  AppColors.primaryBg,
                  AppColors.secondaryBg,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.03, 0.5],
              )),
              child: Column(children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.only(
                      left: width * 0.02,
                      right: width * 0.02,
                      top: height * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          newsBottomSheet(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/icons/document2.png',
                            color: Colors.white,
                            scale: 0.6,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          secndbottomSheet(context);
                        },
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.sort,
                              color: AppColors.lightBtnColor,
                              size: width * 0.07,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.14),
                Column(
                  children: [
                    Text(
                      'BUY A LICENCE',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          letterSpacing: width * 0.0017,
                          fontSize: width * 0.029,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: height * 0.01),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'JOIN THE WINNING TEAM',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                            color: AppColors.lightBtnColor,
                            letterSpacing: height * 0.002,
                            fontSize: height * 0.033),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.05,
                          right: width * 0.05,
                          top: width * 0.05,
                          bottom: width * 0.05),
                      child: Text(
                        'Our most passive users can earn over 25% monthly. Our top traders are doing over 100% monthly with no technical knowledge',
                        style: GoogleFonts.openSans(
                          color: Color(0xffefefef),
                          letterSpacing: height * 0.0015,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => GetLicense());
                      },
                      child: CustomButton(
                        btnColor: AppColors.lightBtnColor,
                        btnWidth: width * 0.3,
                        btnHeight: height * 0.06,
                        text: 'Get Licence',
                        textSpacing: height * 0.002,
                        textSize: height * 0.017,
                        textWeight: FontWeight.w500,
                        textColor: AppColors.darkBtnColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.14),
                Container(
                  margin: EdgeInsets.only(bottom: height * 0.04),
                  child: Text(
                    'More Trading Options',
                    style: GoogleFonts.openSans(
                      color: Color(0xffefefef),
                      letterSpacing: height * 0.001,
                      fontSize: height * 0.021,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 180,
                      width: double.infinity,
                      // color: Colors.amber,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Expanded(
                        child: ListView(
                            physics: const BouncingScrollPhysics(),
                            controller: _controller,
                            scrollDirection: Axis.horizontal,
                            children: [
                              HomeCard(
                                height: height,
                                width: width,
                                text1: moreOptions[0]['text1'].toString(),
                                text2: moreOptions[0]['text2'].toString(),
                              ),
                              HomeCard(
                                height: height,
                                width: width,
                                text1: moreOptions[1]['text1'].toString(),
                                text2: moreOptions[1]['text2'].toString(),
                              ),
                              HomeCard(
                                height: height,
                                width: width,
                                text1: moreOptions[2]['text1'].toString(),
                                text2: moreOptions[2]['text2'].toString(),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(height: height * 0.008),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: ExpandingDotsEffect(
                          dotWidth: width * 0.03, dotHeight: width * 0.03),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      'Top Performing Bots by Traders',
                      style: GoogleFonts.openSans(
                        color: Color(0xffefefef),
                        letterSpacing: height * 0.001,
                        fontSize: height * 0.021,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.plusBtnColor,
                                    width: width * 0.005),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0))),
                            child: CustomButton(
                              btnColor: AppColors.deepBtnColor,
                              btnWidth: width * 0.35,
                              btnHeight: height * 0.06,
                              text: 'Today',
                              suffixIcon: Icon(
                                Icons.keyboard_arrow_down,
                                color: AppColors.lightBtnColor,
                              ),
                              // textSpacing: height * 0.002,
                              textSize: height * 0.017,
                              textWeight: FontWeight.w400,
                              textColor: AppColors.lightBtnColor,
                            ),
                          ),
                          CustomButton(
                            btnColor: AppColors.darkBtnColor,
                            btnWidth: width * 0.35,
                            btnHeight: height * 0.06,
                            text: 'Bot Type ',
                            suffixIcon: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.lightBtnColor,
                            ),
                            // textSpacing: height * 0.002,
                            textSize: height * 0.017,
                            textWeight: FontWeight.w400,
                            textColor: AppColors.lightBtnColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[0]['userName'].toString(),
                        percentage: bots[0]['percentage'].toString(),
                        madeBy: bots[0]['madeBy'].toString(),
                        type: bots[0]['type'].toString()),
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[1]['userName'].toString(),
                        percentage: bots[1]['percentage'].toString(),
                        madeBy: bots[1]['madeBy'].toString(),
                        type: bots[1]['type'].toString()),
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[2]['userName'].toString(),
                        percentage: bots[2]['percentage'].toString(),
                        madeBy: bots[2]['madeBy'].toString(),
                        type: bots[2]['type'].toString()),
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[3]['userName'].toString(),
                        percentage: bots[3]['percentage'].toString(),
                        madeBy: bots[3]['madeBy'].toString(),
                        type: bots[3]['type'].toString()),
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[4]['userName'].toString(),
                        percentage: bots[4]['percentage'].toString(),
                        madeBy: bots[4]['madeBy'].toString(),
                        type: bots[4]['type'].toString()),
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[5]['userName'].toString(),
                        percentage: bots[5]['percentage'].toString(),
                        madeBy: bots[5]['madeBy'].toString(),
                        type: bots[5]['type'].toString()),
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[6]['userName'].toString(),
                        percentage: bots[6]['percentage'].toString(),
                        madeBy: bots[6]['madeBy'].toString(),
                        type: bots[6]['type'].toString()),
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[7]['userName'].toString(),
                        percentage: bots[7]['percentage'].toString(),
                        madeBy: bots[7]['madeBy'].toString(),
                        type: bots[7]['type'].toString()),
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[8]['userName'].toString(),
                        percentage: bots[8]['percentage'].toString(),
                        madeBy: bots[8]['madeBy'].toString(),
                        type: bots[8]['type'].toString()),
                    LeadingBots(
                        width: width,
                        height: height,
                        userName: bots[9]['userName'].toString(),
                        percentage: bots[9]['percentage'].toString(),
                        madeBy: bots[9]['madeBy'].toString(),
                        type: bots[9]['type'].toString()),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.03, bottom: height * 0.02),
                  child: Text('View Zipeth Leaderboard',
                      style: GoogleFonts.roboto(
                        color: Colors.yellow,
                        fontSize: height * 0.022,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.yellow,
                      ),
                      textAlign: TextAlign.center),
                ),
              ])),
        ),
        bottomNavigationBar: Container(
          height: height * 0.1,
          color: AppColors.secondaryBg,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  margin: EdgeInsets.only(left: width * 0.16),
                  padding: EdgeInsets.all(width * 0.035),
                  decoration: const BoxDecoration(
                    color: AppColors.darkBtnColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                  )), /////
              GestureDetector(
                onTap: () {
                  bottomSheet(context);
                },
                child: Container(
                    padding: EdgeInsets.all(width * 0.015),
                    decoration: BoxDecoration(
                      color: AppColors.plusBtnColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(width * 0.03),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          // offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: width * 0.08,
                      weight: width * 0.3,
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => Wallet2());
                },
                child: Container(
                    margin: EdgeInsets.only(right: width * 0.16),
                    padding: EdgeInsets.all(width * 0.045),
                    decoration: const BoxDecoration(
                      color: AppColors.darkBtnColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '\$',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.07,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
