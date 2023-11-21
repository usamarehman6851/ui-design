import 'package:flutter/material.dart';

Widget avatarList(final String userNames) {
  // List of colors for avatars
  List<Color> avatarColors = [Colors.red, Colors.green, Colors.blue];

  // List of texts below each avatar
  List<String> avatarTexts = ['Text1', 'Text2', 'Text3'];

  return Container(
    child: ListView.builder(
      itemCount: 2, // Number of rows
      itemBuilder: (context, rowIndex) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              3, // Number of avatars in each row
                  (index) => Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: avatarColors[index],
                      radius: 40,
                      // Use different text for each avatar
                      child: Text(
                        avatarTexts[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 12), // Adjust the spacing below the avatar
                    Text(
                      userNames[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}
