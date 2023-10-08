import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../bottom_sheets/exchange_depositBTMS.dart';
import '../../values/colors.dart';

class ReceiveToken extends StatefulWidget {
  const ReceiveToken({super.key});

  @override
  State<ReceiveToken> createState() => _ReceiveTokenState();
}

class _ReceiveTokenState extends State<ReceiveToken> {
  late TextEditingController controller;
  String amount = '';

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  void submit() {
    Navigator.of(context).pop(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    Future<String?> openDialog() {
      return showDialog<String>(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Enter Amount'),
                content: TextField(
                  keyboardType: TextInputType.number,
                  controller: controller,
                  decoration:
                      const InputDecoration(hintText: 'Enter amount here'),
                  onSubmitted: (_) => submit(),
                ),
                actions: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      submit;
                    },
                    child: const Text('Confirm'),
                  ),
                ],
              ));
    }

    String data = '';

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.walletBg,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back, color: AppColors.lightBtnColor),
          ),
          title: Text(
            'Receive Ethereum',
            style: GoogleFonts.openSans(
                color: AppColors.lightBtnColor, fontSize: width * 0.055),
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(
              child: Container(
                height: height * 0.37,
                width: width * 0.55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(height * 0.02),
                  ),
                  color: AppColors.lightBtnColor,
                ),
                child: QrImageView(
                  data: data,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              '+ $amount ETH',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: height * 0.13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: EdgeInsets.all(width * 0.04),
                    decoration: const BoxDecoration(
                      color: AppColors.blueIcon,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.copy_rounded,
                        color: AppColors.walletBg)),
                GestureDetector(
                  onTap: () async {
                    ////////////
                    final amount = await openDialog();
                    if (amount == null || amount.isEmpty) return;

                    setState(() {
                      this.amount = amount;
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.all(width * 0.04),
                      decoration: const BoxDecoration(
                        color: AppColors.blueIcon,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.tag,
                          color: AppColors.walletBg.withOpacity(0.7))),
                ),
                Container(
                    padding: EdgeInsets.all(width * 0.04),
                    decoration: const BoxDecoration(
                      color: AppColors.blueIcon,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.share,
                        color: AppColors.walletBg.withOpacity(0.7)))
              ],
            ),
            SizedBox(height: height * 0.015),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Copy',
                        style: GoogleFonts.openSans(color: AppColors.blueIcon)),
                    Text('Set Amount',
                        style: GoogleFonts.openSans(color: AppColors.blueIcon)),
                    Text('Share',
                        style: GoogleFonts.openSans(color: AppColors.blueIcon))
                  ]),
            ),
            SizedBox(height: height * 0.04),
            GestureDetector(
              onTap: () {
                depositBTMS(context);
              },
              child: Container(
                height: height * 0.11,
                width: width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(height * 0.02),
                  ),
                  border: Border.all(
                      color: AppColors.blueIcon, width: width * 0.003),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(width * 0.03),
                          decoration: const BoxDecoration(
                            color: AppColors.darkBtnColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.arrow_downward,
                              color: AppColors.blueIcon)),
                      Container(
                        margin: const EdgeInsets.only(top: 2, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deposit from \nExchange',
                              style: GoogleFonts.openSans(
                                  color: AppColors.lightBtnColor,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'By direct transfer from \nyour account',
                              style: GoogleFonts.openSans(
                                  color: AppColors.greyText,
                                  fontSize: width * 0.032),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: AppColors.lightBtnColor,
                      )
                    ]),
              ),
            ),
            SizedBox(height: height * 0.02)
          ]),
        ),
      ),
    );
  }
}
