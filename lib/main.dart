import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_one/Home_screen.dart';
import 'package:new_one/accountcreated.dart';
import 'package:new_one/createaccount.dart';
import 'package:new_one/mainHomepage.dart';
import 'package:new_one/numberVerify.dart';
import 'package:new_one/second_page.dart';
import 'package:new_one/verification.dart';


import 'AppColors/AllColors.dart';
import 'Camera,Botnavigation/cameraFile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: firstpage, page:() => home_screen()),
        GetPage(name: signin, page: ()=> SecondScreen()),
        GetPage(name: signup, page:() => create_account()),
        GetPage(name: mainhome, page:() => mainHomepage()),
        GetPage(name: verify, page:() => numberVerify()),
        GetPage(name: otp, page:() => OTPScreen()),
        GetPage(name: camera, page:() => ImagePickerPage()),
        GetPage(name: accountdone, page:() => accountCreated()),




      ],

      );
    }
}
