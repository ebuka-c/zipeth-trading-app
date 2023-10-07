import 'package:zipeth/screens/auth/login/email_login.dart';
import 'package:zipeth/screens/auth/login/enter_password.dart';
import 'package:zipeth/screens/auth/login/pin_number_req.dart';
import 'package:zipeth/screens/auth/register/email_registration.dart';
import 'package:zipeth/screens/auth/register/invite_code_req.dart';
import 'package:zipeth/screens/auth/launch_auth_screen.dart';
import 'package:zipeth/screens/auth/register/received_invite.dart';
import 'package:zipeth/screens/mainscreens/get_license.dart';
import 'package:zipeth/screens/mainscreens/home.dart';
import 'package:zipeth/screens/traders/mirror_trade.dart';
import 'package:zipeth/screens/transactions/transaction_history.dart';
import 'package:zipeth/screens/mainscreens/wallet2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
