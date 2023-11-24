import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_one/AppColors/AllColors.dart';


import 'AppUtils/Utils.dart';



class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appUser(whiteColor),

      
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       text_one('Welcome Back', TextStyle(color: Colors.black,
         fontWeight: xBold,
         fontSize: headingFontSize)),
       const   SizedBox(
            height: 8,
          ),

        text_one('Sign in to your Account', TextStyle(color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 18,)),
              inputdata('Phone Number', Icon(Icons.phone_enabled)),
        inputdata('Passwored', Icon(Icons.password_outlined)),


      buttonuser( 'Sign In',  (mainhome))
        ],
      ),
    );
  }
}
