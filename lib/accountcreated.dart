import 'package:flutter/material.dart';
import 'package:new_one/AppColors/AllColors.dart';
import 'package:new_one/AppUtils/Utils.dart';

class accountCreated extends StatelessWidget {
  const accountCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 270),
                child: MyCircularAvatar(40,
                ),
              ),
              text_one('Account Created', TextStyle(fontWeight: xBold,fontSize: headingFontSize,color: whiteColor)),
              text_one('Employee Account has been \n        Successfully Created', TextStyle(fontWeight: normal,fontSize: buttonFontSize,color: whiteColor))
            ],
          ),
          Spacer(),



          buttonuser('Continue', mainhome),
        ],

      ),
    );
  }
}
