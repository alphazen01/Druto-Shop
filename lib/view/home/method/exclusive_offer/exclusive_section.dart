import 'package:druto/view/home/method/exclusive_offer/exclusive_item.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constant/theme.dart';
import '../../../../utils/widgets/custom_text.dart';

class ExclusiveSection extends StatelessWidget {
  const ExclusiveSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Container(
      width: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
          title:  "Exclusive offers", 
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
          ExclusiveItem(context),
      ],
    );
  }
}