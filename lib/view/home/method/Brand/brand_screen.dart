import 'package:druto/view/home/method/Brand/brand_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../utils/constant/theme.dart';
import '../../../../utils/widgets/custom_text.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Container(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
          title:  "Choose Brand", 
          fontSize: 26, 
          fontWeight: FontWeight.w700, 
          color: Colors.black
          ),
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
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              for (int i = 0; i < 10; i++)
                Container(
                 
                  width: 12,
                  height: 12,
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 3,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:  PTheme.buttonPrimary,
                  ),
                )
                      ],
                    ),
          BrandItem(context)
      ],
    );
  }
}