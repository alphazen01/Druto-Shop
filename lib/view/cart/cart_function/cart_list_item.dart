import 'package:flutter/material.dart';

import '../../../utils/widgets/custom_text.dart';

CartList(BuildContext context, index) {
  return Container(
    decoration: BoxDecoration(
     color: Color(0xffC6D3D7),
        border: Border(bottom: BorderSide(width: 0.2, color: Colors.black))),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            
            width: MediaQuery.of(context).size.width / 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cartListItem[index].image,
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          title: "${cartListItem[index].title}",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                          title: "Size :${cartListItem[index].size}",
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 6,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CustomText(
                        title: "\$${cartListItem[index].price}",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 30,
                      ),
                      child: Container(
                        color: Color(0xffEEF4F5),
                        padding: EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                 
                                },
                                child: CustomText(
                                    title: "-",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                            Expanded(
                              child: CustomText(
                                  title: "1",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                 
                                },
                                child: CustomText(
                                    title: "+",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CustomText(
                        title: "\$${cartListItem[index].subTotal}",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

class CartListItem {
  CartListItem({
    required this.image,
    required this.title,
    required this.size,
    required this.price,
    required this.subTotal,
  });
  Widget image;
  String title;
  String size;
  String price;
  String subTotal;
}

List<CartListItem> cartListItem = [
  CartListItem(
      image: Image.asset(
        "assets/boys_long.png",
        scale: 2,
      ),
      title: "Boys Long t-shirt",
      size: "5",
      price: "190.00",
      subTotal: "190.00"),
  CartListItem(
      image: Image.asset(
        "assets/baby_set.png",
        scale: 2,
      ),
      title: "Baby Set",
      size: "5",
      price: "200.00",
      subTotal: "200.00"),
  CartListItem(
      image: Image.asset(
        "assets/men_t.png",
        scale: 2,
      ),
      title: "Men t-shirt",
      size: "5",
      price: "150.00",
      subTotal: "150.00"),
  CartListItem(
      image: Image.asset(
        "assets/women_legging.png",
        scale: 2,
      ),
      title: "Women Leggings",
      size: "5",
      price: "170.00",
      subTotal: "170.00"),
  CartListItem(
      image: Image.asset(
        "assets/women_shoe.png",
        scale: 2,
      ),
      title: "Women Shoes",
      size: "5",
      price: "120.00",
      subTotal: "120.00"),
];
