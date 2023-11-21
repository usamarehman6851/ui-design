import 'package:flutter/material.dart';

Widget buttonuser( final BuildContext context, final String hinttext,
final Widget Function() dynamicRoutename){
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => dynamicRoutename()),
        );
      },
      child: Text(hinttext),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        textStyle: TextStyle(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: Size(400, 50),
      ),
    ),
  );
  
  
  
}
