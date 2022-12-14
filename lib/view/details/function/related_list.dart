import 'package:flutter/material.dart';

import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/custom_text.dart';

class RelatedList{


RelatedList({
  required this.image,
  required this.title,
  required this.star,
  required this.price,
  required this.disconut,
});

Widget image;
String title;
Widget star;
String price;
String disconut;


}

List<RelatedList>relatedListItem =[

RelatedList(
image:  Image.asset(
  "assets/men_t.png",
  scale: 2,
), 
title: "Men Polo t-shirts", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
CustomText(
title: "(12)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$99.00", 
disconut:  "\$120.00"
),



RelatedList(
image:  Image.asset(
  "assets/women_sweatshirts.png",
  scale: 3,
), 
title: "Women Sweatshirts", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
CustomText(
title: "(9)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$199.00", 
disconut:  "\$250.00"
),




RelatedList(
image:  Image.asset(
  "assets/hoodies.png",
  scale:3,
), 
title: "Men Hoodies", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
CustomText(
title: "(12)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$190.00", 
disconut:  "\$200.00"
),


RelatedList(
image:  Image.asset(
  "assets/tracshuits.png",
  scale:3,
), 
title: "Women Tracshuits", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),

CustomText(
title: "(8)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$250.00", 
disconut:  "\$300.00"
),


RelatedList(
image:  Image.asset(
  "assets/baby_set.png",
  scale: 2,
), 
title: "Baby Sets", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
CustomText(
title: "(22)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$70.00", 
disconut:  "\$90.00"
),


RelatedList(
image:  Image.asset(
  "assets/women_shoe.png",
  scale: 1.5,
), 
title: "Lady Shoes", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
CustomText(
title: "(8)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$90.00", 
disconut:  "\$120.00"
),


RelatedList(
image:  Image.asset(
  "assets/trouser.png",
  scale:3,
), 
title: "Men trouser", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
CustomText(
title: "(7)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$70.00", 
disconut:  "\$110.00"
),


RelatedList(
image:  Image.asset(
  "assets/belt.png",
  scale:3,
), 
title: "Men Belt", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),


CustomText(
title: "(8)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$89.00", 
disconut:  "\$100.00"
),


RelatedList(
image:  Image.asset(
  "assets/hat.png",
  scale: 3,
), 
title: "Men Hat", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
CustomText(
title: "(10)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$60.00", 
disconut:  "\$110.00"
),


RelatedList(
image:  Image.asset(
  "assets/women_shorts.png",
  scale: 3,
), 
title: "Women Shorts", 
star: Row(
children: [
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),
Icon(
Icons.star,
color: PTheme.buttonPrimary,
size: 15,
),


CustomText(
title: "(9)",
fontSize: 12,
fontWeight: FontWeight.w500,
color: Colors.black
),
],
),
price: "\$150.00", 
disconut:  "\$200.00"
),



];