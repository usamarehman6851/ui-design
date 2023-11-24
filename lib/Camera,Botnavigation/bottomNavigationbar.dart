import 'package:flutter/material.dart';


//Bottom Navigation Bar
class YourBottomNavigationBar extends StatefulWidget {
  final Widget dynamicRoutename; // Change the type to Widget

  YourBottomNavigationBar({required this.dynamicRoutename});

  @override
  _YourBottomNavigationBarState createState() =>
      _YourBottomNavigationBarState();
}

class _YourBottomNavigationBarState extends State<YourBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (int index) {
        if (index == 1) {
          // If the "Search" icon is tapped, navigate to another page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.dynamicRoutename),
          );
        } else {
          setState(() {
            _currentIndex = index;
          });
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.blueAccent.shade700),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month, color: Colors.blueAccent.shade700),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note_add_sharp, color: Colors.blueAccent.shade700),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.blueAccent.shade700),
          label: 'Profile',
        ),
      ],
    );
  }
}




