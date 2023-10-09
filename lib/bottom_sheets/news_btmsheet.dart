import 'package:animate_do/animate_do.dart';
import 'package:zipeth/screens/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../values/colors.dart';
import '../data/news_data.dart';

newsBottomSheet(context) {
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
                          margin: EdgeInsets.only(top: 6, bottom: 8),
                          height: 5,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 8),
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
                                    color: Colors.white,
                                    // letterSpacing: height * 0.001,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                            padding: EdgeInsets.only(right: width * 0.72),
                            child: Text(
                              'THIS WEEK',
                              style: GoogleFonts.openSans(
                                  color: AppColors.greyText,
                                  fontSize: width * 0.027,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w800),
                            )),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 200,
                          padding: const EdgeInsets.only(left: 20),
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: newsData.length,
                            itemBuilder: (context, index) {
                              return FadeInRight(
                                duration:
                                    Duration(milliseconds: (index * 100) + 500),
                                child: ListTile(
                                  title: Text(
                                    newsData[index]['title'],
                                    style: GoogleFonts.openSans(
                                        color: AppColors.lightBtnColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  subtitle: Text(
                                    newsData[index]['subtitle'],
                                    style: GoogleFonts.openSans(
                                      color: AppColors.greyText,
                                    ),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      Get.to(() => const ReadNews());
                                    },
                                    child: Stack(children: [
                                      const CircleAvatar(
                                        radius: 25,
                                        backgroundColor: AppColors.darkBtnColor,
                                      ),
                                      Container(
                                        width: 60,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppColors.lightBtnColor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Read',
                                            style: GoogleFonts.openSans(
                                                color: AppColors.walletBg,
                                                fontSize: width * 0.03,
                                                fontWeight: FontWeight.w600),
                                            // textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ]),
                                  ),
                                ),
                              );
                            },
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
