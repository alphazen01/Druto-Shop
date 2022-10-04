  import 'package:flutter/material.dart';

import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/custom_text.dart';

Container DetailsSize({String? size}) {
    return Container(
    width: 30,
    height: 20,
    color: PTheme.buttonPrimary,
    child:Center(
      child: CustomText(
      title:"${size}" , 
      fontSize: 14, 
      fontWeight: FontWeight.w700, 
      color: Colors.black
  ),
    ), 
  );
  }