import 'package:flutter/material.dart';
import 'package:flutter_chat/Widgets/custom_button.dart';
//import 'package:flutter_chat/screen/register_sec_screen.dart';

class WelcomeSecScreen extends StatefulWidget {
  const WelcomeSecScreen({super.key});

  @override
  State<WelcomeSecScreen> createState() => _WelcomeSecScreenState();
}

class _WelcomeSecScreenState extends State<WelcomeSecScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 35,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/img1.png',
                    height: 300,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "let's get started",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Never a better time than now to start voting",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CustomButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, 'welcome_creen', (route) => false);
                      },
                      text: 'Get Started',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
