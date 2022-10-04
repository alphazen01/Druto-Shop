import 'package:flutter/material.dart';

import '../../../view/auth/signup/sign_up.dart';
import '../../widgets/buttons/text_button.dart';
import '../../widgets/custom_text.dart';
import '../theme.dart';

Row SignAfter(context) {
  return Row(
    children: [
      CustomText(
          title: "Forget your password? Don’t have an account, please",
          fontSize: 36,
          fontWeight: FontWeight.w300,
          color: Colors.black),
      CustomTextButton(
        title: "sign now",
        fontSize: 36,
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpScreen()));
        },
        color: PTheme.buttonPrimary,
      ),
    ],
  );
}

Row SignBefore(context) {
  return Row(
    children: [
      CustomText(
          title: "Forget your password? Don’t have an account, please",
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.black),
      CustomTextButton(
        title: "sign now",
        onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpScreen()));
        },
        color: PTheme.buttonPrimary,
      ),
    ],
  );
}
