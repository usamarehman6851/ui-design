


import 'package:flutter/material.dart';

PreferredSizeWidget? appUser(BuildContext context,backgcolor,final  List<Widget> actions){

  return AppBar(

    elevation: 0,
    scrolledUnderElevation: 4,
   backgroundColor: backgcolor,
    leading: IconButton(
      color: Colors.black,
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        // Add your back button functionality here
        Navigator.pop(context);
      },
    ),
  );
}

Widget MyTitleWithAvatar(){
  return Row(

    children: [


      const  SizedBox(width: 8), // Adjust the spacing between avatar and text
      const  Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('John Doe', style: TextStyle(fontSize: 16,color: Colors.black)),
          Text('Subtitle', style: TextStyle(fontSize: 14, color: Colors.black)),
        ],
      ),
    ],
  );
}



Widget MyCircularAvatar(double newRadius) {
  return CircleAvatar(

    backgroundImage: AssetImage('assets/apna.jpeg'), // Replace with your image
    radius: newRadius, // Adjust the size of the avatar
  );
}



