import 'package:flutter/material.dart';

class ParliamenScreen extends StatefulWidget {
  //variabal of routs
  static const String screenRoute = 'parliamen_election';
  const ParliamenScreen({super.key});

  @override
  State<ParliamenScreen> createState() => _ParliamenScreenState();
}

class _ParliamenScreenState extends State<ParliamenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: Row(
          //image

          children: [
            //Image.asset(
            //  'images/bmb.png',
            //  height: 25,
            //),
            //const SizedBox(
            //  width: 10,
            //),
            Text(' انتخابات مجلس الشعب')
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                // add here logout function
              },
              icon: Icon(Icons.close))
        ],
      ),
    );
  }
}
