import 'package:druto/view/home/method/categories/categories_section.dart';
import 'package:druto/view/home/method/exclusive_offer/exclusive_section.dart';
import 'package:druto/view/home/method/popular/popular_section.dart';
import 'package:druto/view/home/method/product/products_section.dart';
import 'package:druto/view/home/method/trending_deals/trending_deals_section.dart';
import 'package:druto/view/home/method/carousel_slider/adds_slider.dart';
import 'package:flutter/material.dart';
import '../method/carousel_slider/custom_carousel.dart';
import '../method/carousel_slider/offer_slider.dart';


Column HomeSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Divider(),
      SizedBox(
        height: 15,
      ),
      Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 3,
          child: CustomCarousel()),
      CategoriesSection(),
      SizedBox(
        height: 20,
      ),
      ProductsSection(),
      SizedBox(
        height: 20,
      ),
      ExclusiveSection(),
      SizedBox(
        height: 40,
      ),
      Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 6,
          child: AddsSlider()),
      SizedBox(
        height: 40,
      ),
      TrendingDealsSection(),
      PopularSection(),
      SizedBox(
        height: 20,
      ),
      Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 3,
          child: OfferSlider()),
    ],
  );
}
