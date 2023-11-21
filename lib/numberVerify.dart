import 'package:flutter/material.dart';
import 'package:new_one/Widgets/appbarback.dart';
import 'package:new_one/Widgets/buttons.dart';
import 'package:new_one/Widgets/textform.dart';
import 'package:new_one/Widgets/textwidget.dart';
import 'package:new_one/verification.dart';

class numberVerify extends StatelessWidget {
  const numberVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
     appBar: appUser(context, Colors.white),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          text_one('Created Account', TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          )),
         inputdata('Phone Number', Icon(Icons.phone)),
          Spacer(),
          buttonuser(context, 'Get Otp', () => OTPScreen())

        ],
      ),


      
    );
  }
}
