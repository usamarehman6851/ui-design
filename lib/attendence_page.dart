import 'package:flutter/material.dart';
import 'package:new_one/AppColors/AllColors.dart';



import 'AppUtils/Utils.dart';
import 'Camera,Botnavigation/bottomNavigationbar.dart';
import 'Camera,Botnavigation/cameraFile.dart';

class attendancePage extends StatelessWidget {
  const attendancePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appUser(

        blueColor700,
        // Add your title widget here
        // Add your custom widget here
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: searchBar(),
          ),
          Expanded(flex: 25,
            child: ListView.builder(
              itemCount: 16, // Number of times you want to show containerText
              itemBuilder: (context, index) {
                return containerText();
              },
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: MyCircularAvatar(23,
           ),
          ),

          YourBottomNavigationBar(dynamicRoutename: ImagePickerPage()),


        ],
      ),


      // Replace YourBodyWidget with your actual body content
    );
  }
}
