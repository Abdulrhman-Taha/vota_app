import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  //variabal of routs
  static const String screenRoute = 'otp_screen';

  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      //extendBodyBehindAppBar: true,
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
            )),
      ),
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

              //pinput

              Pinput(
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                //validator: (s) {
                //  return s == '2222' ? null : 'Pin is incorrect';
                //},
                length: 6,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                //onCompleted: (pin) => print(pin),
              ),

              SizedBox(
                height: 30,
              ),

              //button

              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Verify phone number'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue[800]!),
                  onPressed: () {
                    try {
                      //Navigator.pushNamed(context, 'otp_screen');
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
              ),

              // TextButton Edit Phone Number ?
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'phonenumber_screen', (route) => false);
                    },
                    child: Text(
                      'Edit Phone Number ?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
