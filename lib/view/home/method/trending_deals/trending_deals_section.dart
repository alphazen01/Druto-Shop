import 'package:carousel_slider/carousel_slider.dart';
import 'package:druto/view/home/method/trending_deals/trending_item.dart';
import 'package:druto/view/home/method/trending_deals/trending_list.dart';
import 'package:flutter/material.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

import '../../../../utils/constant/theme.dart';
import '../../../../utils/widgets/buttons/custom_button.dart';
import '../../../../utils/widgets/custom_text.dart';

class TrendingDealsSection extends StatefulWidget {
  TrendingDealsSection({
    Key? key,
  }) : super(key: key);

  @override
  State<TrendingDealsSection> createState() => _TrendingDealsSectionState();
}

class _TrendingDealsSectionState extends State<TrendingDealsSection> {
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
                      title: "Trending Deals",
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
        SizedBox(
          height: 20,
        ),
        TrendingItem(context)
      ],
    );
  }
}
