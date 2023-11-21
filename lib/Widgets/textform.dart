import 'package:flutter/material.dart';


Widget inputdata(final String getdata,
final Icon? icon ){
  return Padding(
    padding: const EdgeInsets.all(16),
    child: TextFormField(

      decoration: InputDecoration(

        hintText: getdata,
        filled: false,
      ),
    ),
  );
}


