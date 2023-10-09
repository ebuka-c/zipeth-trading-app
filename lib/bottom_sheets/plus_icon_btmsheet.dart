import 'package:zipeth/screens/affiliate/join_affiliate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/traders/mirror_trade.dart';
import '../../values/colors.dart';

bottomSheet(context) {
  // var width = MediaQuery.of(context).size.width;
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
              GestureDetector(
                onTap: () {
                  Get.to(() => const MirrorTrade());
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 10),
                  child: ListTile(
                    leading: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: AppColors.darkBtnColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.content_copy,
                          color: Colors.white,
                        )),
                    title: Text('Mirror Trading',
                        style: GoogleFonts.openSans(
                            fontSize: 15,
                            color: AppColors.lightBtnColor,
                            fontWeight: FontWeight.w600)),
                    subtitle: Text(
                      'Follow & copy approved traders. Enjoy hands off trading with one click.',
                      style: GoogleFonts.openSans(
                          color: AppColors.greyText,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Divider(
                  height: 1,
                  indent: 10,
                  endIndent: 10,
                  color: AppColors.greyText.withOpacity(0.5)),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 6),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const JoinAffiliate());
                  },
                  child: ListTile(
                    leading: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: AppColors.darkBtnColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.people_outline,
                          color: Colors.white,
                        )),
                    title: Text('Join our Affiliate Program',
                        style: GoogleFonts.openSans(
                            fontSize: 15,
                            color: AppColors.lightBtnColor,
                            fontWeight: FontWeight.w600)),
                    subtitle: Text(
                      'We are sharing over 80% of all our revenues with our affiliates as rewards for working.',
                      style: GoogleFonts.openSans(
                          color: AppColors.greyText,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ]),
            Divider(
                height: 1,
                indent: 10,
                endIndent: 10,
                color: AppColors.greyText.withOpacity(0.5)),
            Padding(
              padding: const EdgeInsets.only(top: 6, bottom: 6),
              child: ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: AppColors.darkBtnColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.money,
                      color: AppColors.lightBtnColor,
                    )),
                title: Text('Payment Gateway',
                    style: GoogleFonts.openSans(
                        fontSize: 15,
                        color: AppColors.lightBtnColor,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Divider(
                height: 1,
                indent: 10,
                endIndent: 10,
                color: AppColors.greyText.withOpacity(0.5)),
            const SizedBox(height: 20)
          ]),
        );
      });
}
