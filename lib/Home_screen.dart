import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_one/AppColors/AllColors.dart';
import 'package:new_one/createaccount.dart';


import 'AppUtils/Utils.dart';


class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(
                  height: 275,
                ),
                // Centered Column for the image and text
                Column(
                  children: [
                    Image.asset(
                      'assets/apna.jpeg',
                      width: 100,
                      height: 100,
                    ),

                    Text(
                      "Management made easy",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 240,
                ),


                // Column for "Sign In" and "Create Account" buttons
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   buttonuser('Sign In', (signin)),
                  buttonuser( 'Create Account', (signup))

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
