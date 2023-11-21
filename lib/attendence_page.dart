import 'package:flutter/material.dart';
import 'package:new_one/Widgets/appbarback.dart';
import 'package:new_one/Widgets/customizeCalendar.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appUser(
        context,
        Colors.blueAccent.shade700,
         // Add your title widget here
        leading: customizeCalendar(), // Add your custom widget here
      ),
       // Replace YourBodyWidget with your actual body content
    );
  }
}
