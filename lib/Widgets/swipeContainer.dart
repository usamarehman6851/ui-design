import 'package:flutter/material.dart';

Widget SwipeContent() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Container(
      height: 150,
      width: 400,

      child: PageView(
        controller: PageController(),
        children: [
          // Swipeable Page 1
          Container(

            decoration: BoxDecoration(
              color: Colors.blueAccent.shade400,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Text(
                'Page 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Swipeable Page 2
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade400,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Text(
                'Page 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Swipeable Page 3
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade400,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Text(
                'Page 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
