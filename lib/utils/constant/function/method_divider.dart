import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

Container DividerAfter(context) {
  return Container(
    width: MediaQuery.of(context).size.width/1.2,
    child: Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 5),
        CustomText(
            title: "OR",
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.black),
        SizedBox(width: 5),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Container DividerBefore(context) {
  return Container(
    width: MediaQuery.of(context).size.width/1.2,
    child: Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 5),
        CustomText(
            title: "OR",
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.black),
        SizedBox(width: 5),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
