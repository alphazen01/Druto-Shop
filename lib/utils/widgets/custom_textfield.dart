import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
   CustomTextfield({
    Key? key,
    required this.obscureText,
    required this.readOnly,
    required this.controller,
    this.suffix,
    this.color,
    
  }) : super(key: key);
final bool obscureText;
final bool readOnly;
Widget?suffix;
Color? color;
TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller ,
      obscureText:obscureText ,
      readOnly:readOnly ,
     decoration:InputDecoration(
      suffix:suffix ,
      iconColor:color ,
       
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