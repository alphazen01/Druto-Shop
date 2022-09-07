import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
   CustomTextfield({
    Key? key,
    required this.obscureText
  }) : super(key: key);
final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText:obscureText ,
     decoration:InputDecoration(
       
       enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(
           color: Colors.black
         ),
         
       ),
       focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
           color: Colors.black
         ), 
       )
     ) ,
     
    );
  }
}