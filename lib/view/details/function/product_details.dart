 import 'package:druto/view/details/function/details_size.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/buttons/custom_button.dart';
import '../../../utils/widgets/custom_text.dart';

Container ProductDetails(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height/2,
        child: Row(
          children: [
           Container(
            width:MediaQuery.of(context).size.width/2,
            child:Image.asset(
              "assets/men_t.png",
              scale: 0.7,
            ),  
           ),
           
            Container(
            width:MediaQuery.of(context).size.width/2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
               CustomText(
                title: "Men Polo T-Shirt", 
                fontSize: 24, 
                fontWeight: FontWeight.w700, 
                color: Colors.black
              ),
              CustomText(
                title: "Be the first to review this product", 
                fontSize: 14, 
                fontWeight: FontWeight.w500, 
                color: Colors.black
              ),
              Row(
                children: [
                   CustomText(
                title: "Brand:", 
                fontSize: 14, 
                fontWeight: FontWeight.w700, 
                color: Colors.black
              ),
              SizedBox(width: 10,),
              CustomText(
                title: "Addidas", 
                fontSize: 14, 
                fontWeight: FontWeight.w500, 
                color: Colors.black
              ),
                ],
              ),
               Row(
                children: [
               Text(
                "\$120.00",
                style: TextStyle(
                decoration:
                TextDecoration.lineThrough,
                fontSize: 12,
                fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(width: 10,),
              CustomText(
                title: "\$99.00", 
                fontSize: 14, 
                fontWeight: FontWeight.w500, 
                color: Colors.redAccent
              ),
                ],
              ),
              Row(
                children: [
              CustomText(
                title: "Color", 
                fontSize: 14, 
                fontWeight: FontWeight.w700, 
                color: Colors.black
              ),
              SizedBox(width: 10,),
              Container(
                width: 20,
                height: 20,
                color: Colors.red,
              ),
              SizedBox(width: 10,),
              Container(
                width: 20,
                height: 20,
                color: Colors.green,
              ),
              SizedBox(width: 10,),
              Container(
                width: 20,
                height: 20,
                color: Colors.yellow,
              ),
                ],
              ), 
              Row(
                children: [
              CustomText(
                title: "Sizes", 
                fontSize: 14, 
                fontWeight: FontWeight.w700, 
                color: Colors.black
              ),
              SizedBox(width: 10,),
              DetailsSize(
              size: "S"
              ),
              SizedBox(width: 10,),
              DetailsSize(
                size: "M"
              ),
              SizedBox(width: 10,),
              DetailsSize(
                size: "L"
              ),
              SizedBox(width: 10,),
              DetailsSize(
                size: "XL"
              ),
              SizedBox(width: 10,),
              DetailsSize(
                size: "XXL"
              ),
                ],
              ),
              CustomText(
                title: "Casual dress all weather", 
                fontSize: 14, 
                fontWeight: FontWeight.w700, 
                color: Colors.black
              ),
              CustomText(
                title: "Claim your 3% Discount", 
                fontSize: 14, 
                fontWeight: FontWeight.w500, 
                color: Colors.black
              ),
              CustomText(
                title: "DELIVERY CHARGE 100TK ALL BANGLADESH", 
                fontSize: 14, 
                fontWeight: FontWeight.w500, 
                color: Colors.black
              ),
              Container(
                width: MediaQuery.of(context).size.width/2.5,
                child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      title: "Add to cart",
                      onTap: () {},
                      radius: 5,
                      primary: PTheme.buttonPrimary,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10),
                      color: Color(0xffEEF4F5),
                      width: 70,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: CustomText(
                            title: "-",
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                            ),
                          ),
                          CustomText(
                            title: "1",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                            ),
                          InkWell(
                            onTap: () {},
                            child: CustomText(
                            title: "+",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: CustomButton(
                      title: "BUY NOW",
                      onTap: () {},
                      radius: 5,
                      primary: PTheme.buttonPrimary,
                      color: Colors.black,
                    ),
                  ),
                ],
                ),
              )  
              ],
            ),
           ),
          ],
        ),
      );
  }