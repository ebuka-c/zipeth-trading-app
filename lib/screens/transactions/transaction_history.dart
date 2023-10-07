import 'package:zipeth/screens/mainscreens/home.dart';
import 'package:zipeth/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/app_widgets.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    TabController tabController = TabController(length: 2, vsync: this);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.walletBg,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.05, left: width * 0.01),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          }, //
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: width * 0.19,
                      ),
                      CustomButton(
                        btnColor: AppColors.darkBtnColor,
                        btnWidth: width * 0.35,
                        btnHeight: height * 0.07,
                        text: 'Transactions',
                        // textSpacing: height * 0.002,
                        textSize: height * 0.018,
                        textWeight: FontWeight.bold,
                        textColor: AppColors.lightBtnColor,
                      ),
                      SizedBox(width: width * 0.17),
                      GestureDetector(
                        onTap: () {
                          historybottomSheet(context);
                        },
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: AppColors.darkBtnColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.filter_list,
                              color: Colors.white,
                              size: width * 0.08,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  'TOTAL TRANSACTIONS MADE',
                  style: GoogleFonts.openSans(
                      color: AppColors.walletTexts,
                      fontSize: height * 0.013,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  '\$0.00',
                  style: GoogleFonts.openSans(
                      color: const Color.fromARGB(255, 36, 212, 183),
                      fontSize: height * 0.05,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: height * 0.001),
                Text(
                  'SINCE YOU JOINED',
                  style: GoogleFonts.openSans(
                      color: AppColors.greyText,
                      fontSize: height * 0.013,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.013),

                Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ThemeData().colorScheme.copyWith(
                          primary: Colors.yellow[700],
                        ),
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      color: AppColors.walletBg,
                      child: TabBar(
                        // indicator: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(12),
                        //     color: Colors.orange),
                        dividerColor: Colors.transparent,
                        controller: tabController,
                        isScrollable: true,
                        labelPadding: EdgeInsets.symmetric(horizontal: 30),
                        tabs: [
                          Tab(
                              child: Text('Transactions',
                                  style: GoogleFonts.openSans(
                                      color: AppColors.lightBtnColor,
                                      fontWeight: FontWeight.w500))),
                          Tab(
                              child: Text('Profits',
                                  style: GoogleFonts.openSans(
                                      color: AppColors.lightBtnColor,
                                      fontWeight: FontWeight.w500))),
                        ],
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //     child: TabBarView(
                //   controller: tabController,
                //   children: [
                //     ListView.builder(
                //         physics: BouncingScrollPhysics(),
                //         shrinkWrap: true,
                //         itemCount: 10,
                //         itemBuilder: (context, index) {
                //           return Card(
                //             margin: EdgeInsets.symmetric(horizontal: 30),
                //             child: ListTile(
                //               title: Text('Contact ${index + 1}'),
                //               subtitle:
                //                   Text('Missed call from contact ${index + 1}'),
                //             ),
                //           );
                //         })
                //   ],
                // ))
                /*SizedBox(
                  height: 500,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Container(
                        height: 200,
                        color: Colors.green,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: ['Featured Item', 'Most Recent', 'Etc...']
                              .map((e) => Container(
                                    child: Text(e),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  historybottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext c) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: AppColors.darkBtnColor,
            ),
            child: Wrap(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 6, bottom: 15, left: 10),
                    child: ListTile(
                      title: Text('All Records',
                          style: GoogleFonts.openSans(
                              fontSize: 16,
                              color: AppColors.lightBtnColor,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Divider(
                    height: 1,
                    indent: 10,
                    endIndent: 10,
                    color: AppColors.greyText.withOpacity(0.5)),
                Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 10, left: 10),
                  child: ListTile(
                    title: Text('Deposit',
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            color: AppColors.lightBtnColor,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Divider(
                    height: 1,
                    indent: 10,
                    endIndent: 10,
                    color: AppColors.greyText.withOpacity(0.5)),
                Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 10, left: 10),
                  child: ListTile(
                    title: Text('Transfer',
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            color: AppColors.lightBtnColor,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Divider(
                    height: 1,
                    indent: 10,
                    endIndent: 10,
                    color: AppColors.greyText.withOpacity(0.5)),
                Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 10, left: 10),
                  child: ListTile(
                    title: Text('Withdraw',
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            color: AppColors.lightBtnColor,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Divider(
                    height: 1,
                    indent: 10,
                    endIndent: 10,
                    color: AppColors.greyText.withOpacity(0.5)),
              ]),
              // SizedBox(height: 15)
              const Padding(
                padding: EdgeInsets.only(bottom: 0.2),
                // child: ListTile(),
              )
            ]),
          );
        });
  }
}
