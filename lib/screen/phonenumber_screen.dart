import 'package:flutter/material.dart';
import 'package:flutter_chat/screen/otp_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pinput/pinput.dart';

class PhoneScreen extends StatefulWidget {
  //variabal of routs
  static const String screenRoute = 'phonenumber_screen';

  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  TextEditingController countrycode = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState

    countrycode.text = "+2";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/img1.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 25,
              ),

              //Phone Verification
              Text(
                'Phone Verification',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  //color: Colors.white
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Text(
                'We need to register your phone number before getting started',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 20,
              ),

              //box

              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    // |

                    Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    //phone

                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Phone'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //button

              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Send the code'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue[800]!),
                  onPressed: () {
                    try {
                      Navigator.pushNamed(context, 'otp_screen');
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
