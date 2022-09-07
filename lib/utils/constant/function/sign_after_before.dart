import 'package:flutter/material.dart';

import '../../widgets/buttons/text_button.dart';
import '../../widgets/custom_text.dart';
import '../theme.dart';

Row SignAfter() {
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
        onTap: () {},
        color: PTheme.buttonPrimary,
      ),
    ],
  );
}

Row SignBefore() {
  return Row(
    children: [
      CustomText(
          title: "Forget your password? Don’t have an account, please",
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.black),
      CustomTextButton(
        title: "sign now",
        onTap: () {},
        color: PTheme.buttonPrimary,
      ),
    ],
  );
}
