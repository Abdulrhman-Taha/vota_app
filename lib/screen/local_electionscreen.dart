import 'package:flutter/material.dart';

class LocalScreen extends StatefulWidget {
  //variabal of routs
  static const String screenRoute = 'local_election_screen';
  const LocalScreen({super.key});

  @override
  State<LocalScreen> createState() => _LocalScreenState();
}

class _LocalScreenState extends State<LocalScreen> {
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
            Text('الانتخابات المحلية')
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
