

import 'package:flutter/material.dart';
import '../../../../utils/constant/theme.dart';
import '../../../../utils/widgets/custom_text.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    title: "Categories",
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                Divider(
                  thickness: 2,
                  color: PTheme.buttonPrimary,
                ),
              ],
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    
      ],
    );
  }
}