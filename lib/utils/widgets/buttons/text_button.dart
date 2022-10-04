import 'package:flutter/material.dart';



// ignore: must_be_immutable
class CustomTextButton extends StatelessWidget {
   CustomTextButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.color,
    this.fontSize,
    this.fontWeight
  }) : super(key: key);
  final String title;
  final VoidCallback onTap;
  double?fontSize;
  FontWeight?fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap, 
      child: Text(
        title,
        style: TextStyle(
          fontSize:fontSize,
          fontWeight: fontWeight, 
          color: color
        ),
      )
    );
  }
}