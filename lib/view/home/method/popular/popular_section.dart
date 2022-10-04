import 'package:druto/view/home/method/popular/popular_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../utils/constant/theme.dart';
import '../../../../utils/widgets/custom_text.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    title: "Popular",
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
      PopularItem(context),
      ],
    );
  }
}