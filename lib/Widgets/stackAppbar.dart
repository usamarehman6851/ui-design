import 'package:flutter/material.dart';



Widget stackAppbar(){
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Container(
          height: 55,
          width: 390,
          color: Colors.blue.shade900,
        ),
      ),

      const   Padding(
        padding: const EdgeInsets.only(left: 140,top: 30),
        child: CircleAvatar(
          backgroundImage: NetworkImage(""),
          backgroundColor:Colors.white ,
          maxRadius: 50.0,

        ),
      )
    ],
  );
}


