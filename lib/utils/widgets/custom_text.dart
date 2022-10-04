import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
   CustomText({
    Key? key,
    required this.title,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
  }) : super(key: key);


final String title;
double fontSize;
FontWeight fontWeight;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
     title,
     style: TextStyle(
       fontSize: fontSize,
       fontWeight: fontWeight,
       color: color
     ),

    );
  }
}