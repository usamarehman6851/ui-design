import 'package:flutter/material.dart';
import 'package:new_one/Widgets/appbarback.dart';
import 'package:new_one/Widgets/buttons.dart';
import 'package:new_one/Widgets/stackAppbar.dart';
import 'package:new_one/Widgets/textform.dart';
import 'package:new_one/Widgets/textwidget.dart';
import 'package:new_one/numberVerify.dart';


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
        appBar: appUser(context, Colors.blue.shade900),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            stackAppbar(),
           text_one('Created Account', TextStyle(color: Colors.black,
               fontWeight: FontWeight.bold,
               fontSize: 22)),
            inputdata('Your Name',Icon(Icons.sort_by_alpha)),
            inputdata('Job Title', Icon(Icons.shopping_bag_outlined)),
            inputdata('Your Email', Icon(Icons.email_outlined)),
            Spacer(),
            buttonuser(context, 'Continue', () => numberVerify())


          ],
        ),












      );

  }
}
