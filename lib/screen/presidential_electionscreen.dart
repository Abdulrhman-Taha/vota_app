import 'package:flutter/material.dart';
import 'package:flutter_chat/Widgets/my_button.dart';

class PresidentialScreen extends StatefulWidget {
  //variabal of routs
  static const String screenRoute = 'presidential_election_screen';

  const PresidentialScreen({super.key});

  @override
  State<PresidentialScreen> createState() => _LocalScreenState();
}

class _LocalScreenState extends State<PresidentialScreen> {
  int _markCount = 0;
  int _elonCount = 0;
  int _bezosCount = 0;

  void _incrementMarkCount() {
    setState(() {
      _markCount++;
    });
  }

  void _incrementElonCount() {
    setState(() {
      _elonCount++;
    });
  }

  void _incrementBezosCount() {
    setState(() {
      _bezosCount++;
    });
  }

  Widget _buildCounterSquare(int count) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          '$count',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

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
            Text('Presidential Election')
          ],
        ),
        //actions: [
        //  IconButton(
        //      onPressed: () {
        //        // add here logout function
        //      },
        //      icon: Icon(Icons.close))
        //],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //avatar 1
              Row(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/mark1.jpg'),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyButton(
                          color: Colors.blue[900]!,
                          title: 'Mark Zuckerberg',
                          onPressed: _incrementMarkCount,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        _buildCounterSquare(_markCount),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ),

              //avatar 2
              Row(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/elon.jpg'),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyButton(
                          color: Colors.blue[900]!,
                          title: 'Elon Musk',
                          onPressed: _incrementElonCount,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        _buildCounterSquare(_elonCount),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ),

              //avatar 3
              Row(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/bezos.jpg'),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyButton(
                          color: Colors.blue[900]!,
                          title: 'Elon Musk',
                          onPressed: _incrementBezosCount,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        _buildCounterSquare(_bezosCount),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}





//import 'package:flutter/material.dart';
//import 'package:flutter_chat/Widgets/my_button.dart';
//
//class PresidentialScreen extends StatefulWidget {
//  //variabal of routs
//  static const String screenRoute = 'presidential_election_screen';
//
//  const PresidentialScreen({super.key});
//
//  @override
//  State<PresidentialScreen> createState() => _LocalScreenState();
//}
//
//class _LocalScreenState extends State<PresidentialScreen> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.yellow[900],
//        title: Row(
//          //image
//
//          children: [
//            //Image.asset(
//            //  'images/bmb.png',
//            //  height: 25,
//            //),
//            //const SizedBox(
//            //  width: 10,
//            //),
//            Text('Presidential Election')
//          ],
//        ),
//        //actions: [
//        //  IconButton(
//        //      onPressed: () {
//        //        // add here logout function
//        //      },
//        //      icon: Icon(Icons.close))
//        //],
//      ),
//      body: SafeArea(
//        child: Padding(
//          padding: const EdgeInsets.all(20.0),
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              //avatar 1
//              Row(
//                children: [
//                  CircleAvatar(
//                    radius: 50.0,
//                    backgroundImage: AssetImage('images/mark1.jpg'),
//                  ),
//                  SizedBox(
//                    width: 20.0,
//                  ),
//                  Expanded(
//                    child: Column(
//                      //crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        MyButton(
//                          color: Colors.blue[900]!,
//                          title: 'Mark Zuckerberg',
//                          onPressed: () {},
//                        ),
//                        SizedBox(
//                          height: 10.0,
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//
//              SizedBox(
//                height: 50,
//              ),
//
//              //avatar 2
//              Row(
//                children: [
//                  CircleAvatar(
//                    radius: 50.0,
//                    backgroundImage: AssetImage('images/elon.jpg'),
//                  ),
//                  SizedBox(
//                    width: 20.0,
//                  ),
//                  Expanded(
//                    child: Column(
//                      // crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        MyButton(
//                          color: Colors.blue[900]!,
//                          title: 'Elon Musk',
//                          onPressed: () {},
//                        ),
//                        SizedBox(
//                          height: 10.0,
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//
//              SizedBox(
//                height: 50,
//              ),
//
//              //avatar 3
//              Row(
//                children: [
//                  CircleAvatar(
//                    radius: 50.0,
//                    backgroundImage: AssetImage('images/bezos.jpg'),
//                  ),
//                  SizedBox(
//                    width: 20.0,
//                  ),
//                  Expanded(
//                    child: Column(
//                      //crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        MyButton(
//                          color: Colors.blue[900]!,
//                          title: 'Jeff Bezos',
//                          onPressed: () {},
//                        ),
//                        SizedBox(
//                          height: 10.0,
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
