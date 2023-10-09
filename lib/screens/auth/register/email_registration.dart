import 'package:zipeth/screens/auth/register/invite_code_req.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../values/colors.dart';

class EmailReg extends StatefulWidget {
  const EmailReg({super.key});

  @override
  State<EmailReg> createState() => _EmailRegState();
}

class _EmailRegState extends State<EmailReg> {
  String password = '';
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColors.primaryBg,
            AppColors.secondaryBg,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // stops: [0.1, 1],
        )),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                SizedBox(
                  width: width * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(top: height * 0.1, right: width * 0.75),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/icons/back.png',
                      color: Colors.white,
                      scale: 0.6,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: height * 0.1),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/icons/close.png',
                      color: Colors.white,
                      scale: 0.8,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.009,
                )
              ]),
              SizedBox(height: height * 0.13),
              Text(
                'Enter Your Basic Information',
                style: GoogleFonts.roboto(
                  color: const Color(0xffefefef),
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: height * 0.03),
              //////
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.08, right: width * 0.08),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.textfieldBg),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                            primary: AppColors.primaryBg,
                          ),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'CREATE EMAIL ADDRESS *',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.05),
                          borderSide: const BorderSide(
                            color: AppColors.primaryBg,
                            width: 2.0,
                          ),
                        ),
                        labelStyle: TextStyle(color: AppColors.greyText),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.02),
                            borderSide:
                                BorderSide(color: AppColors.lightBtnColor)),
                        suffixIcon: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.08, right: width * 0.08),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.textfieldBg),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                            primary: AppColors.primaryBg,
                          ),
                    ),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'CREATE PASSWORD *',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.05),
                          borderSide: const BorderSide(
                            color: AppColors.primaryBg,
                            width: 2.0,
                          ),
                        ),
                        labelStyle: const TextStyle(color: AppColors.greyText),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.02)),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(obscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      obscureText: obscureText,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                margin: const EdgeInsets.only(right: 120, bottom: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('. At least 8 characters',
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                    Text('. At least one (1) capital letter',
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                    Text('. At least one (1) special character',
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.08, right: width * 0.08),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.textfieldBg),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                            primary: AppColors.primaryBg,
                          ),
                    ),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'COUNTRY OF RESIDENCE *',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.05),
                          borderSide: const BorderSide(
                            color: AppColors.primaryBg,
                            width: 2.0,
                          ),
                        ),
                        labelStyle: const TextStyle(color: AppColors.greyText),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.02)),
                        suffixIcon: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const InvCodeRequest());
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: height * 0.1,
                      right: width * 0.35,
                      left: width * 0.35),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Image.asset(
                    'assets/icons/right-arrow.png',
                    color: Colors.white,
                    scale: 0.6,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.13,
              )
            ],
          ),
        ),
      ),
    );
  }
}
