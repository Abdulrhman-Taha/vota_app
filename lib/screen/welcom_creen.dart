import 'package:flutter/material.dart';
import 'package:flutter_chat/Widgets/my_button.dart';
import 'package:flutter_chat/screen/registration_screen.dart';
import 'package:flutter_chat/screen/signin_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  //variabal of routs
  static const String screenRoute = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Container(
                    height: 200,

                    //image

                    child: Image.asset('images/bmb.png'),
                  ),
                  const Center(
                    child: Text(
                      'vote here',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),

              //sign in button

              MyButton(
                color: Colors.yellow[900]!,
                title: 'Sign in',
                onPressed: () {
                  Navigator.pushNamed(context, SignInScreen.screenRoute);
                },
              ),

              MyButton(
                color: Colors.blue[800]!,
                title: 'register',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.screenRoute);
                },
              )
            ],
          )),
    );
  }
}
