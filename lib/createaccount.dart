import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_one/AppColors/AllColors.dart';
import 'AppUtils/Utils.dart';



class create_account extends StatefulWidget {
  const create_account({super.key});

  @override
  State<create_account> createState() => _create_accountState();
}

class _create_accountState extends State<create_account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appUser( blueColor900,
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            stackAppbar(blueColor900),
           text_one('Created Account', TextStyle(color: blackColor,
               fontWeight: xBold,
               fontSize: headingFontSize)),
            inputdata('Your Name',Icon(Icons.sort_by_alpha)),
            inputdata('Job Title', Icon(Icons.shopping_bag_outlined)),
            inputdata('Your Email', Icon(Icons.email_outlined)),
            Spacer(),
           buttonuser( 'Continue', (verify))


          ],
        ),












      );

  }
}
