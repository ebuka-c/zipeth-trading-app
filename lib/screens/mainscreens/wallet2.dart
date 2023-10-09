import 'package:animate_do/animate_do.dart';
import 'package:zipeth/screens/transactions/tokens_actions.dart';
import 'package:zipeth/screens/transactions/transaction_history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/tokens_info.dart';
import '../../values/colors.dart';

class Wallet2 extends StatefulWidget {
  const Wallet2({super.key});

  @override
  State<Wallet2> createState() => _Wallet2State();
}

class _Wallet2State extends State<Wallet2> {
  late ScrollController _scrollController;
  bool _isScrolled = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_listenToScrollChange);

    super.initState();
  }

  void _listenToScrollChange() {
    if (_scrollController.offset >= 100.0) {
      setState(() {
        _isScrolled = true;
      });
    } else {
      setState(() {
        _isScrolled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.walletBg,
        body: CustomScrollView(controller: _scrollController, slivers: [
          SliverAppBar(
            expandedHeight: height * 0.4,
            elevation: 0,
            pinned: true,
            stretch: true,
            toolbarHeight: 80,
            backgroundColor: AppColors.walletBg,
            leading: IconButton(
              color: AppColors.lightBtnColor,
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: width * 0.035),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => History());
                  },
                  child: Text(
                    'History',
                    style: GoogleFonts.openSans(
                        color: AppColors.lightBtnColor,
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.033),
                  ),
                ),
              )
            ],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            centerTitle: true,
            title: AnimatedOpacity(
              opacity: _isScrolled ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Column(
                children: [
                  Text(
                    '\$ 1,840.00',
                    style: GoogleFonts.openSans(
                      color: AppColors.greenText,
                      fontSize: 22,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 30,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.lightBtnColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              titlePadding: const EdgeInsets.only(left: 20, right: 20),
              title: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: _isScrolled ? 0.0 : 1.0,
                child: Container(
                  ////
                  margin: EdgeInsets.only(bottom: height * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FadeIn(
                        duration: const Duration(milliseconds: 500),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$',
                              style: GoogleFonts.openSans(
                                  color: AppColors.greenText,
                                  fontSize: width * 0.06),
                            ),
                            SizedBox(width: 3),
                            Text('1,840.00',
                                style: GoogleFonts.openSans(
                                    fontSize: width * 0.07,
                                    // fontWeight: FontWeight.bold,
                                    color: AppColors.greenText))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FadeIn(
                        duration: const Duration(milliseconds: 500),
                        child: Text(
                          'UPDATED OCTOBER 04, 2023',
                          style: GoogleFonts.openSans(
                              color: Colors.yellow,
                              fontSize: width * 0.017,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              padding: EdgeInsets.all(width * 0.017),
                              decoration: const BoxDecoration(
                                color: AppColors.plusBtnColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.arrow_upward,
                                  color: AppColors.walletBg.withOpacity(0.7))),
                          Container(
                            padding: EdgeInsets.all(width * 0.017),
                            decoration: const BoxDecoration(
                              color: AppColors.plusBtnColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.arrow_downward,
                                color: AppColors.walletBg.withOpacity(0.7)),
                          ),
                          Container(
                              padding: EdgeInsets.all(width * 0.017),
                              decoration: const BoxDecoration(
                                color: AppColors.plusBtnColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.wallet_outlined,
                                  color: AppColors.walletBg.withOpacity(0.7))),
                        ],
                      ),
                      SizedBox(height: height * 0.005),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Send',
                              style: GoogleFonts.openSans(
                                  color: AppColors.lightBtnColor,
                                  fontSize: height * 0.012,
                                  fontWeight: FontWeight.w500)),
                          Text('Receive',
                              style: GoogleFonts.openSans(
                                  color: AppColors.lightBtnColor,
                                  fontSize: height * 0.012,
                                  fontWeight: FontWeight.w500)),
                          Text('Buy',
                              style: GoogleFonts.openSans(
                                  color: AppColors.lightBtnColor,
                                  fontSize: height * 0.012,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Container(
                        width: 30,
                        height: 3,
                        decoration: BoxDecoration(
                          color: AppColors.lightBtnColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ), //////////
          SliverFillRemaining(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                children: [
                  FadeInDown(
                    duration: Duration(milliseconds: 500),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tokens',
                            style: GoogleFonts.openSans(
                                color: AppColors.greyText,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ]),
                  ),
                  ////////////////////////////////////
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 20),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tokens.length,
                      itemBuilder: (context, index) {
                        return FadeInDown(
                          duration: const Duration(milliseconds: 500),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => const TokenActions());
                            },
                            child: Container(
                              ///////////////
                              margin: const EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColors.walletBg,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        tokens[index]['leading']!,
                                        width: width * 0.1,
                                        height: width * 0.1,
                                        scale: 0.75,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            tokens[index]['title'].toString(),
                                            style: GoogleFonts.openSans(
                                                color: AppColors.lightBtnColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: width * 0.04),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                tokens[index]['subtitle1']
                                                    .toString(),
                                                style: GoogleFonts.openSans(
                                                    color: AppColors.greyText,
                                                    fontSize: width * 0.032),
                                              ),
                                              SizedBox(width: width * 0.02),
                                              Text(
                                                tokens[index]['subtitle2']
                                                    .toString(),
                                                style: GoogleFonts.openSans(
                                                    color: AppColors.greenText,
                                                    fontSize: width * 0.03),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    tokens[index]['balance'].toString(),
                                    style: GoogleFonts.openSans(
                                        color: AppColors.greyText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.01),
                    child: Row(
                      children: [
                        SizedBox(width: width * 0.15),
                        Container(
                            padding: EdgeInsets.all(width * 0.003),
                            decoration: const BoxDecoration(
                              color: AppColors.blueIcon,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.add,
                                color: AppColors.walletBg)),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Add Tokens',
                          style: GoogleFonts.openSans(
                              color: AppColors.blueIcon,
                              fontSize: width * 0.04),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
