import 'package:zipeth/screens/mainscreens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zipeth/values/colors.dart';

class ReceivedInvite extends StatefulWidget {
  const ReceivedInvite({super.key});

  @override
  State<ReceivedInvite> createState() => _ReceivedInviteState();
}

class _ReceivedInviteState extends State<ReceivedInvite> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
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
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                margin: EdgeInsets.only(top: height * 0.1, right: width * 0.75),
                padding: EdgeInsets.all(10),
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
            SizedBox(height: height * 0.15),
            Text(
              'Do You Have An Invite Code?',
              style: GoogleFonts.roboto(
                color: Color(0xffefefef),
                fontSize: height * 0.025,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: height * 0.04),
            Padding(
              padding: EdgeInsets.only(left: width * 0.14, right: width * 0.14),
              child: Text(
                  'You should have received this from the person who referred you to Zipeth. Having an invite code gives you extra benefits.',
                  style: GoogleFonts.roboto(
                    color: Color(0xffefefef),
                    fontSize: height * 0.022,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: height * 0.04),
            Padding(
              padding: EdgeInsets.only(left: width * 0.08, right: width * 0.08),
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
                      labelText: 'SELECT OPTION *',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width * 0.05),
                        borderSide: BorderSide(
                          color: AppColors.primaryBg,
                          width: 2.0,
                        ),
                      ),
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.02)),
                      suffixIcon: Icon(Icons.arrow_forward),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.08, right: width * 0.08),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromRGBO(53, 11, 76, 1)),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ThemeData().colorScheme.copyWith(
                          primary: AppColors.primaryBg,
                        ),
                  ),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'ENTER INVITE CODE *',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width * 0.05),
                        borderSide: const BorderSide(
                          color: AppColors.primaryBg,
                          width: 2.0,
                        ),
                      ),
                      labelStyle: const TextStyle(color: Colors.white),
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
            SizedBox(height: height * 0.04),
            GestureDetector(
              onTap: () {
                Get.to(() => HomeScreen());
              },
              child: Container(
                margin: EdgeInsets.only(
                    top: height * 0.1, right: width * 0.35, left: width * 0.35),
                padding: EdgeInsets.all(10),
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
            SizedBox(height: height * 0.2)
          ]),
        ),
      ),
    );
  }
}
