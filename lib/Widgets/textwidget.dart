import 'package:flutter/material.dart';


Widget text_one(final String heading,
final TextStyle? textStyle){
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child:  Text(
      heading,
      style: textStyle?? const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 18,


      ),
    ),
  );
}





