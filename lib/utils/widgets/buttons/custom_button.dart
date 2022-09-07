import 'package:druto/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.primary,
   required this.radius,
  }) : super(key: key);
  
final String title;
final VoidCallback onTap;
double? fontSize;
FontWeight? fontWeight;
final Color? color;
final Color? primary;
double radius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
     onPressed: onTap, 
     child: Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
      ),
      ),
     style: ElevatedButton.styleFrom(
  
     primary:primary ,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(radius)
       )
     ),
    );
  }
}
