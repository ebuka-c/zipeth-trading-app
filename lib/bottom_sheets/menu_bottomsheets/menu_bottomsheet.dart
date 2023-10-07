import 'package:zipeth/bottom_sheets/menu_bottomsheets/connect_with_us.dart';
import 'package:zipeth/bottom_sheets/menu_bottomsheets/log_out_btms.dart';
import 'package:zipeth/screens/mainscreens/get_license.dart';
import 'package:zipeth/screens/traders/mirror_trade.dart';
import 'package:zipeth/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens/mainscreens/wallet2.dart';
import '../../values/colors.dart';
import 'chat_affiliate_btms.dart';
import 'earn_rewards_btms.dart';

secndbottomSheet(context) {
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
                          margin: EdgeInsets.only(top: 6, bottom: 8),
                          height: 5,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.lightBtnColor),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, right: 8),
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
                                    color: Color(0xffefefef),
                                    // letterSpacing: height * 0.001,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/icons/users.png'),
                              backgroundColor: AppColors.darkBtnColor,
                              radius: 50,
                            ),
                            const SizedBox(width: 100),
                            Container(
                              margin: EdgeInsets.only(right: 20, bottom: 70),
                              child: Icon(
                                Icons.settings_outlined,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'User 1',
                            style: GoogleFonts.openSans(
                              color: Color(0xffefefef),
                              fontSize: 16.5,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 360,
                          decoration: BoxDecoration(
                              color: AppColors.darkBtnColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'License Level',
                                style: GoogleFonts.openSans(
                                    color: AppColors.walletTexts,
                                    fontSize: 12,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '-',
                              style: GoogleFonts.openSans(
                                  color: AppColors.lightBtnColor,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Not Subscribed',
                                style: GoogleFonts.openSans(
                                    color: AppColors.greyText,
                                    fontSize: 12,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 10),
                            CustomButton(
                              btnWidth: 140,
                              btnHeight: 40,
                              btnColor: AppColors.plusBtnColor,
                              text: 'Buy License',
                              textColor: AppColors.lightBtnColor,
                              textWeight: FontWeight.w600,
                            ),
                          ]),
                        ),
                        const SizedBox(height: 20),
                        const ListTile(
                          title: Text('Connect an Exchange',
                              style: TextStyle(
                                  fontSize: 16.5,
                                  color: AppColors.lightBtnColor)),
                          trailing: Icon(
                            Icons.arrow_forward,
                            color: AppColors.greyText,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => Wallet2());
                          },
                          child: const ListTile(
                            title: Text('Deposit & Withdraw',
                                style: TextStyle(
                                    fontSize: 16.5,
                                    color: AppColors.lightBtnColor)),
                            trailing: Icon(
                              Icons.arrow_forward,
                              color: AppColors.greyText,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => GetLicense());
                          },
                          child: const ListTile(
                            title: Text('Buy/Upgrade Your License',
                                style: TextStyle(
                                    fontSize: 16.5,
                                    color: AppColors.lightBtnColor)),
                            trailing: Icon(
                              Icons.arrow_forward,
                              color: AppColors.greyText,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            rewardsBottomSheet(context);
                          },
                          child: const ListTile(
                            title: Text('Earn Rewards by Using Zipeth',
                                style: TextStyle(
                                    fontSize: 16.5,
                                    color: AppColors.lightBtnColor)),
                            trailing: Icon(
                              Icons.arrow_forward,
                              color: AppColors.greyText,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            affiliateSupportBTMS(context);
                          },
                          child: const ListTile(
                            title: Text('Chat Affiliates & Support',
                                style: TextStyle(
                                    fontSize: 16.5,
                                    color: AppColors.lightBtnColor)),
                            trailing: Icon(
                              Icons.arrow_forward,
                              color: AppColors.greyText,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => MirrorTrade());
                          },
                          child: const ListTile(
                            title: Text('Mirror Trade Someone\'s Bot',
                                style: TextStyle(
                                    fontSize: 16.5,
                                    color: AppColors.lightBtnColor)),
                            trailing: Icon(
                              Icons.arrow_forward,
                              color: AppColors.greyText,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            connectBTMS(context);
                          },
                          child: const ListTile(
                            title: Text('Connect With Us',
                                style: TextStyle(
                                    fontSize: 16.5,
                                    color: AppColors.lightBtnColor)),
                            trailing: Icon(
                              Icons.arrow_forward,
                              color: AppColors.greyText,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            logOutBTMS(context);
                          },
                          child: const ListTile(
                            title: Text('Log Out',
                                style: TextStyle(
                                    fontSize: 16.5,
                                    color: AppColors.lightBtnColor)),
                            trailing: Icon(
                              Icons.arrow_forward,
                              color: AppColors.greyText,
                            ),
                          ),
                        ),
                      ]),
                ]),
              ),
            ),
          ),
        );
      });
}
