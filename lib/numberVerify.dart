import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_one/AppColors/AllColors.dart';


import 'AppUtils/Utils.dart';

class numberVerify extends StatelessWidget {
  const numberVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
     appBar: appUser( whiteColor),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          text_one('Created Account', TextStyle(
            fontWeight: xBold,
            fontSize: headingFontSize,
            color: Colors.black,
          )),
         inputdata('Phone Number', Icon(Icons.phone)),
          Spacer(),
        buttonuser( 'Get Otp', (otp))

        ],
      ),


      
    );
  }
}
