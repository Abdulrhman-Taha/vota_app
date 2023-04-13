import 'package:flutter/material.dart';

class PresidentialScreen extends StatefulWidget {
  //variabal of routs
  static const String screenRoute = 'presidential_election_screen';

  const PresidentialScreen({super.key});

  @override
  State<PresidentialScreen> createState() => _LocalScreenState();
}

class _LocalScreenState extends State<PresidentialScreen> {
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
            Text('الانتخابات الرئاسية')
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
