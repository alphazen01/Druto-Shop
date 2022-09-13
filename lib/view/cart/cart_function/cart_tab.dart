import 'package:flutter/material.dart';

import '../../../utils/widgets/custom_text.dart';

Container CartTab(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xffC6D3D7),
        border: Border(bottom: BorderSide(width: 0.3, color: Colors.black))),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            child: CustomText(
                title: "PRODUCT",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomText(
                      title: "PRICE",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Expanded(
                  child: CustomText(
                      title: "QUANTITY",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Expanded(
                  child: CustomText(
                      title: "SUBTOTAL",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
