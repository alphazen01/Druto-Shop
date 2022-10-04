import 'package:flutter/material.dart';




class BrandList{


BrandList({
  required this.image,
});

Widget image;



}

List<BrandList>brandListItem =[

BrandList(
image: Image.asset("assets/nike.png")
),
BrandList(
image: Image.asset("assets/rolex.png")
),
BrandList(
image: Image.asset("assets/addidas.png")
),
BrandList(
image: Image.asset("assets/anta.png")
),
BrandList(
image: Image.asset("assets/chanal.jpg")
),
BrandList(
image: Image.asset("assets/dior.png")
),
BrandList(
image: Image.asset("assets/uniqlo.png")
),


];