import 'package:flutter/material.dart';
import 'package:new_one/Widgets/appbarback.dart';
import 'package:new_one/Widgets/buttons.dart';
import 'package:new_one/Widgets/textform.dart';
import 'package:new_one/Widgets/textwidget.dart';
import 'package:new_one/mainHomepage.dart';

import 'package:new_one/verification.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appUser(context,Colors.white),

      
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       text_one('Welcome Back', TextStyle(color: Colors.black,
         fontWeight: FontWeight.bold,
         fontSize: 22,)),
       const   SizedBox(
            height: 8,
          ),

        text_one('Sign in to your Account', TextStyle(color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 18,)),
              inputdata('Phone Number', Icon(Icons.phone_enabled)),
        inputdata('Passwored', Icon(Icons.password_outlined)),


        buttonuser(context, 'Sign In', () => mainHomepage())
        ],
      ),
    );
  }
}
