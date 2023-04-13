import 'package:flutter/material.dart';
import 'package:flutter_chat/screen/choice_screen.dart';
import 'package:flutter_chat/screen/local_electionscreen.dart';
import 'package:flutter_chat/screen/otp_screen.dart';
import 'package:flutter_chat/screen/parliamen_election.dart';
import 'package:flutter_chat/screen/phonenumber_screen.dart';
import 'package:flutter_chat/screen/presidential_electionscreen.dart';
import 'package:flutter_chat/screen/registration_screen.dart';
import 'package:flutter_chat/screen/signin_screen.dart';
import 'screen/welcom_creen.dart';
import 'package:flutter_chat/screen/phonenumber_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Voting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: PresidentialScreen(),
      initialRoute: 'phonenumber_screen',
      //initialRoute: 'welcome_screen',

      // routes

      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        SignInScreen.screenRoute: (context) => SignInScreen(),
        RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
        LocalScreen.screenRoute: (context) => LocalScreen(),
        PresidentialScreen.screenRoute: (context) => PresidentialScreen(),
        ChoiseScreen.screenRoute: (context) => ChoiseScreen(),
        ParliamenScreen.screenRoute: (context) => ParliamenScreen(),
        PhoneScreen.screenRoute: (context) => PhoneScreen(),
        OtpScreen.screenRoute: (context) => OtpScreen(),
      },
    );
  }
}
