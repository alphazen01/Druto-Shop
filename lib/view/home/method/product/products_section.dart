import 'package:druto/view/home/method/product/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../utils/constant/theme.dart';
import '../../../../utils/widgets/custom_text.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Container(
      width: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
          title:  "Products", 
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
         
          ProductItem(context),

      ],
    );
  }
}