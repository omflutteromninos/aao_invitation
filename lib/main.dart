//import 'package:epic_inviation/Authentication/otp_test.dart';
import 'dart:collection';

import 'package:epic_inviation/Authentication/reset_password_screen.dart';
import 'package:epic_inviation/InvitationScreens/invites_screen.dart';
import 'package:epic_inviation/InvitationScreens/send_invitesto_screen.dart';
import 'package:epic_inviation/MainDashboardScreen/main_dashboard_screen.dart';
import 'package:epic_inviation/SplashScreen/splash_screen.dart';
import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/contacts/contact_detail_screen.dart';
import 'package:epic_inviation/contacts/contacts_screen.dart';
import 'package:epic_inviation/selfless_screens/your_impact_screen.dart';
import 'package:epic_inviation/spin/final_spin_screen.dart';
import 'package:epic_inviation/spin/spin.dart';
import 'package:epic_inviation/spin/spin_test.dart';
import 'package:epic_inviation/spin/spin_text_test.dart';
import 'package:epic_inviation/test_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.black, // <-- SEE HERE
        ),
        primaryColor: mainColor,
        accentColor: mainColor,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}
