

import 'package:flutter/material.dart';
import 'package:new_one/Widgets/appbarback.dart';
import 'package:new_one/Widgets/sixAvatar.dart';
import 'package:new_one/Widgets/swipeContainer.dart';
import 'package:new_one/Widgets/textwidget.dart';

Widget ContainerWidget() {
  return Scaffold(

    resizeToAvoidBottomInset: false,
    body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            width: 450,
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade400,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    text_one(
                        'Hindustan Construction',
                        TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 150),
                      child: text_one(
                          'Site 1',
                          TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 10,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      text_one('Today',
                          TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      text_one('Wed, 18, 2023',
                          TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 15,
                          ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                          color: Colors.blueAccent.shade400,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            text_one('256\n Total',
                                TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 9,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.shade400,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            text_one('192\n Attendance',
                                TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 9,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          color: Colors.blueAccent.shade400,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            text_one('52\n Overtime',
                                TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 9,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(flex: 1,child: SwipeContent()),
          SizedBox(
            height: 10,
          ),
          Expanded(flex: 2,
            child: Container(

              height: 200,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child:avatarList('user 1')




          
            
          ),
            
          ),
          MyCircularAvatar(

            50,
          ),
        ],
      ),

    ),


    bottomNavigationBar: BottomNavigationBar(
      elevation: 0.0,
      currentIndex: 0,
      onTap: (index) {
        // Handle navigation to different pages based on index
        // You can add your logic here
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.blueAccent.shade700,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month,color: Colors.blueAccent.shade700),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note_add_sharp,color: Colors.blueAccent.shade700),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,color: Colors.blueAccent.shade700),
          label: 'Profile',
        ),
      ],
    ),
  );


}