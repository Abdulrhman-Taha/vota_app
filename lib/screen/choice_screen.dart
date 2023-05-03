import 'package:flutter/material.dart';
import 'package:flutter_chat/screen/local_electionscreen.dart';
import 'package:flutter_chat/screen/parliamen_election.dart';
import 'package:flutter_chat/screen/presidential_electionscreen.dart';

import '../Widgets/my_button.dart';

class ChoiseScreen extends StatefulWidget {
  //variabal of routs
  static const String screenRoute = 'choise_screen';
  const ChoiseScreen({super.key});

  @override
  State<ChoiseScreen> createState() => _ChoiseScreenState();
}

class _ChoiseScreenState extends State<ChoiseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          //image

          children: [
            Container(
              height: 200,
              child: Image.asset('images/bmb.png'),
            ),
            const SizedBox(
              height: 20,
            ),

            //انتخابات محلية

            MyButton(
              color: Colors.blue[800]!,
              title: 'الانتخابات المحلية',
              onPressed: () {
                Navigator.pushNamed(context, LocalScreen.screenRoute);
              },
            ),

            //انتخابات مجلس شعب

            MyButton(
              color: Colors.blue[800]!,
              title: 'انتخابات مجلس الشعب',
              onPressed: () {
                Navigator.pushNamed(context, ParliamenScreen.screenRoute);
              },
            ),

            //انتخابات رئاسية

            MyButton(
              color: Colors.blue[800]!,
              title: 'Presidential Election',
              onPressed: () {
                Navigator.pushNamed(context, PresidentialScreen.screenRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
