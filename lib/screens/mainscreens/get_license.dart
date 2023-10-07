import 'package:zipeth/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../values/colors.dart';

class GetLicense extends StatefulWidget {
  const GetLicense({super.key});

  @override
  State<GetLicense> createState() => _GetLicenseState();
}

class _GetLicenseState extends State<GetLicense> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.walletBg,
        body: SingleChildScrollView(
            child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Padding(
                padding:
                    EdgeInsets.only(top: height * 0.03, right: width * 0.02),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    'Close',
                    style: GoogleFonts.openSans(
                      color: Color(0xffefefef),
                      letterSpacing: height * 0.001,
                      fontSize: height * 0.019,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: width * 0.52, top: height * 0.02),
              padding: EdgeInsets.only(left: width * 0.06),
              child: Text(
                'Basic \$10/month',
                style: GoogleFonts.openSans(
                  color: Color(0xffefefef),
                  letterSpacing: height * 0.001,
                  fontSize: height * 0.0205,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: width * 0.18),
              child: Text(
                'For beginners who want to get started',
                style: GoogleFonts.openSans(
                  color: AppColors.greenText,
                  // letterSpacing: height * 0.001,
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            // Container(
            //   margin: EdgeInsets.only(right: width * 0.6),
            //   height: 30,
            //   width: 30,
            //   color: Colors.amber,
            // ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor:
                      AppColors.walletBg, // here for close state
                  colorScheme: ColorScheme.light(
                    primary: AppColors.greenText,
                  ), // here for open state in replacement of deprecated accentColor
                  dividerColor: Colors.transparent, // to remove the border
                ),
                child: ExpansionTile(
                  title: Container(
                    margin: EdgeInsets.only(right: width * 0.6),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.lightBtnColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_up,
                  ),
                  children: [
                    Container(
                      width: width * 0.9,
                      height: height * 0.18,
                      padding: EdgeInsets.only(left: width * 0.02),
                      color: AppColors.walletBg,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('. Max trade cap: \$500',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Max exchange: 1',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.05),
                            Center(
                              // padding: EdgeInsets.only(right: height * 0.011),
                              child: CustomButton(
                                  btnWidth: width * 0.8,
                                  btnHeight: height * 0.05,
                                  btnColor: AppColors.lightBtnColor,
                                  text: 'SELECT',
                                  textSpacing: width * 0.005,
                                  textWeight: FontWeight.w500,
                                  textColor: AppColors.walletBg),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //
            Container(
              // height: height * 0.38,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: AppColors.walletBg,
                borderRadius: BorderRadius.circular(width * 0.03),
                border: Border.all(
                    color: AppColors.plusBtnColor, width: width * 0.004),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: width * 0.04),
                    margin: EdgeInsets.only(
                        right: width * 0.45, top: height * 0.02),
                    child: Text(
                      'Starter \$100/year',
                      style: GoogleFonts.openSans(
                        color: AppColors.lightBtnColor,
                        letterSpacing: height * 0.001,
                        fontSize: height * 0.0205,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    padding: EdgeInsets.only(left: width * 0.04),
                    margin: EdgeInsets.only(right: width * 0.22),
                    child: Text(
                      'For beginners who want to get started',
                      style: GoogleFonts.openSans(
                        color: AppColors.greenText,
                        // letterSpacing: height * 0.001,
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ), //////////
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor:
                          AppColors.walletBg, // here for close state
                      colorScheme: ColorScheme.light(
                        primary: AppColors.greenText,
                      ), // here for open state in replacement of deprecated accentColor
                      dividerColor: Colors.transparent, // to remove the border
                    ),
                    child: ExpansionTile(
                      title: Container(
                        margin: EdgeInsets.only(right: width * 0.6),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.lightBtnColor,
                        ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_up,
                      ),
                      children: [
                        Container(
                          width: width * 0.9,
                          height: height * 0.22, //change container height here
                          color: AppColors.walletBg,
                          child: Container(
                            padding: EdgeInsets.only(left: width * 0.04),
                            margin: EdgeInsets.only(right: width * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('. Max total trading capital is: \$3000',
                                    style: TextStyle(
                                        color: AppColors.greyText,
                                        fontSize: height * 0.018,
                                        fontWeight: FontWeight.w500)),
                                Text('. 3 exchange API connections at a time',
                                    style: TextStyle(
                                        color: AppColors.greyText,
                                        fontSize: height * 0.018,
                                        fontWeight: FontWeight.w400)),
                                Text('. All templated bots available',
                                    style: TextStyle(
                                        color: AppColors.greyText,
                                        fontSize: height * 0.018,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                    '. Copy/paste other traders\' bots available',
                                    style: TextStyle(
                                        color: AppColors.greyText,
                                        fontSize: height * 0.018,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(height: height * 0.05),
                                Center(
                                  // padding: EdgeInsets.only(right: height * 0.011),
                                  child: CustomButton(
                                      btnWidth: width * 0.8,
                                      btnHeight: height * 0.05,
                                      btnColor: AppColors.greenText,
                                      text: 'SELECT',
                                      textSpacing: width * 0.005,
                                      textWeight: FontWeight.w500,
                                      textColor: AppColors.lightBtnColor),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            Container(
              margin: EdgeInsets.only(right: width * 0.46),
              padding: EdgeInsets.only(left: width * 0.08),
              child: Text(
                'Advanced \$500/year',
                style: GoogleFonts.openSans(
                  color: Color(0xffefefef),
                  letterSpacing: height * 0.001,
                  fontSize: height * 0.0205,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              margin: EdgeInsets.only(right: width * 0.1),
              padding: EdgeInsets.only(left: width * 0.08),
              child: Text(
                'For those who want more trades and exchanges',
                style: GoogleFonts.openSans(
                  color: AppColors.greenText,
                  // letterSpacing: height * 0.001,
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor:
                      AppColors.walletBg, // here for close state
                  colorScheme: ColorScheme.light(
                    primary: AppColors.greenText,
                  ), // here for open state in replacement of deprecated accentColor
                  dividerColor: Colors.transparent, // to remove the border
                ),
                child: ExpansionTile(
                  title: Container(
                    margin: EdgeInsets.only(right: width * 0.6),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.lightBtnColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_up,
                  ),
                  children: [
                    Container(
                      width: width * 0.9,
                      height: height * 0.3, //change container height here
                      padding: EdgeInsets.only(left: width * 0.02),
                      color: AppColors.walletBg,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('. Max total trading capital is \$1000',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Unlimited exchange API connections',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Copy/paste other traders bots available',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Custom bot creation available',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Ability to become a published trader',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Max exchange: 1',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.05),
                            Center(
                              // padding: EdgeInsets.only(right: height * 0.011),
                              child: CustomButton(
                                  btnWidth: width * 0.8,
                                  btnHeight: height * 0.05,
                                  btnColor: AppColors.lightBtnColor,
                                  text: 'SELECT',
                                  textSpacing: width * 0.005,
                                  textWeight: FontWeight.w500,
                                  textColor: AppColors.walletBg),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
/////
            // Container(
            //   margin: EdgeInsets.only(left: width * 0.001),
            //   // padding: EdgeInsets.only(left: width * 0.3),
            //   child: Divider(
            //     indent: width * 0.5,
            //     height: height * 0.0001,
            //     color: Colors.white,
            //     thickness: 1,
            //   ),
            // ),
            SizedBox(height: height * 0.05),
            Container(
              margin: EdgeInsets.only(right: width * 0.5),
              // padding: EdgeInsets.only(right: width * 0.1),
              child: Text(
                'Pro \$1000/year',
                style: GoogleFonts.openSans(
                  color: Color(0xffefefef),
                  letterSpacing: height * 0.001,
                  fontSize: height * 0.0205,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              margin: EdgeInsets.only(right: width * 0.3),
              padding: EdgeInsets.only(left: width * 0.08),
              child: Text(
                'If you want more speed and customization',
                style: GoogleFonts.openSans(
                  color: AppColors.greenText,
                  // letterSpacing: height * 0.001,
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor:
                      AppColors.walletBg, // here for close state
                  colorScheme: ColorScheme.light(
                    primary: AppColors.greenText,
                  ), // here for open state in replacement of deprecated accentColor
                  dividerColor: Colors.transparent, // to remove the border
                ),
                child: ExpansionTile(
                  title: Container(
                    margin: EdgeInsets.only(right: width * 0.6),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.lightBtnColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_up,
                  ),
                  children: [
                    Container(
                      width: width * 0.9,
                      height: height * 0.3, //change container height here
                      padding: EdgeInsets.only(left: width * 0.02),
                      color: AppColors.walletBg,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('. Max total trading capital is \$100,000',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Unlimited exchange API connections',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. All templated bots available',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Copy/paste other traders bots available',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Custom bot creation available',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.002),
                            Text('. Ability to become a published trader',
                                style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.05),
                            Center(
                              // padding: EdgeInsets.only(right: height * 0.011),
                              child: CustomButton(
                                  btnWidth: width * 0.8,
                                  btnHeight: height * 0.05,
                                  btnColor: AppColors.lightBtnColor,
                                  text: 'SELECT',
                                  textSpacing: width * 0.005,
                                  textWeight: FontWeight.w500,
                                  textColor: AppColors.walletBg),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            CustomButton(
              btnWidth: width * 0.8,
              btnHeight: height * 0.05,
              btnColor: AppColors.plusBtnColor,
              text: 'ACTIVATE',
              textSpacing: width * 0.005,
              textWeight: FontWeight.w500,
              textColor: AppColors.lightBtnColor,
              suffixIcon: Icon(
                Icons.arrow_forward,
                size: width * 0.04,
                color: AppColors.lightBtnColor,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

//second list tile children
/**Container(
                      height: height * 0.5,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: AppColors.walletBg,
                        borderRadius: BorderRadius.circular(width * 0.03),
                        border: Border.all(
                            color: AppColors.plusBtnColor,
                            width: width * 0.004),
                      ),
                    ) */
