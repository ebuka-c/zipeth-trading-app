import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zipeth/values/colors.dart';

import '../widgets/app_widgets.dart';

class ViewLeaderboard extends StatefulWidget {
  const ViewLeaderboard({super.key});

  @override
  State<ViewLeaderboard> createState() => _ViewLeaderboardState();
}

class _ViewLeaderboardState extends State<ViewLeaderboard>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: AppColors.walletBg,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.05, left: width * 0.01),
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
                  text: 'Top 10',
                  // textSpacing: height * 0.002,
                  textSize: height * 0.018,
                  textWeight: FontWeight.bold,
                  textColor: AppColors.lightBtnColor,
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.03),
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
                        child: Text('Affiliates',
                            style: GoogleFonts.openSans(
                                color: AppColors.lightBtnColor,
                                fontWeight: FontWeight.w500))),
                    Tab(
                        child: Text('Traders',
                            style: GoogleFonts.openSans(
                                color: AppColors.lightBtnColor,
                                fontWeight: FontWeight.w500))),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.3,
            width: width * 0.93,
            decoration: BoxDecoration(
              color: AppColors.darkBtnColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(bottom: height * 0.08),
                child: Text(
                  '1',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.greyText.withOpacity(0.2),
                      fontSize: height * 0.15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.07),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: height * 0.05, top: height * 0.015),
                      child: Text(
                        '\$',
                        style: TextStyle(
                            color: Colors.yellow.withOpacity(0.7),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'crypto jey',
                      style: TextStyle(
                          color: AppColors.lightBtnColor,
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'INDIA',
                      style: TextStyle(
                          color: AppColors.greyText,
                          fontSize: height * 0.015,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$6,068.00',
                      style: TextStyle(
                        color: AppColors.greenText,
                        fontSize: height * 0.05,
                      ),
                    ),
                    Text(
                      'Sales This Month',
                      style: TextStyle(
                          color: AppColors.greyText,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          /////////////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height * 0.2,
                width: width * 0.45,
                decoration: BoxDecoration(
                  color: AppColors.darkBtnColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * 0.05),
                    child: Text(
                      '2',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.greyText.withOpacity(0.2),
                          fontSize: height * 0.07),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                bottom: height * 0.015, top: height * 0.01),
                            child: CircleAvatar(
                                backgroundColor: AppColors.walletBg,
                                child: Image.asset('assets/icons/users.png'))),
                        Text(
                          'chawa',
                          style: TextStyle(
                              color: AppColors.lightBtnColor,
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'NIGERIA',
                          style: TextStyle(
                              color: AppColors.greyText,
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '\$4,068.00',
                          style: TextStyle(
                            color: AppColors.greenText,
                            fontSize: height * 0.025,
                          ),
                        ),
                        Text(
                          'Sales This Month',
                          style: TextStyle(
                              color: AppColors.greyText,
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ]),
              ), /////////////
              Container(
                height: height * 0.2,
                width: width * 0.45,
                decoration: BoxDecoration(
                  color: AppColors.darkBtnColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * 0.05),
                    child: Text(
                      '3',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.greyText.withOpacity(0.2),
                          fontSize: height * 0.07),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                bottom: height * 0.015, top: height * 0.01),
                            child: CircleAvatar(
                                backgroundColor: AppColors.walletBg,
                                child: Image.asset('assets/icons/users.png'))),
                        Text(
                          'chawa',
                          style: TextStyle(
                              color: AppColors.lightBtnColor,
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'NIGERIA',
                          style: TextStyle(
                              color: AppColors.greyText,
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '\$4,068.00',
                          style: TextStyle(
                            color: AppColors.greenText,
                            fontSize: height * 0.025,
                          ),
                        ),
                        Text(
                          'Sales This Month',
                          style: TextStyle(
                              color: AppColors.greyText,
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(height: height * 0.015),
            ],
          ),
          ListTile(
            leading: Row(children: [
              Text(
                '4',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.greyText.withOpacity(0.2),
                    fontSize: height * 0.07),
              ),
              const CircleAvatar(
                backgroundColor: AppColors.darkBtnColor,
                backgroundImage: AssetImage('assets/icons/users.png'),
              ),
            ]),
          )
          /*  Padding(
                padding: EdgeInsets.only(top: 100, bottom: 100),
                child: ListTile(
              leading: Row(children: [
                Text(
                  '4',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.greyText.withOpacity(0.2),
                      fontSize: height * 0.07),
                ),
                const CircleAvatar(
                  backgroundColor: AppColors.darkBtnColor,
                  backgroundImage: AssetImage('assets/icons/users.png'),
                ),
              ]),
              title: const Text(
                    'Cryptodon71',
                    style: TextStyle(
                      color: AppColors.lightBtnColor,
                    ),
                  ),
                  subtitle: Text(
                    'INDIA',
                    style: TextStyle(
                        color: AppColors.greyText,
                        fontSize: height * 0.015,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$4,068.00',
                        style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: height * 0.025,
                        ),
                      ),
                      Text(
                        'Sales This Month',
                        style: TextStyle(
                            color: AppColors.greyText,
                            fontSize: height * 0.015,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
               ),
               ),*/
        ]),
      ),
    );
  }
}
