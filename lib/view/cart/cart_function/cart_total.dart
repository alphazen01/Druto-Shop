 import 'package:flutter/material.dart';

import '../../../utils/widgets/custom_text.dart';

Container CartAllTotal(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: 100,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                  title: "SUBTOTAL", 
                  fontSize: 18, 
                  fontWeight: FontWeight.w500, 
                  color: Colors.black
                ),
                CustomText(
                  title: "\$1060.00", 
                  fontSize: 18, 
                  fontWeight: FontWeight.w500, 
                  color: Colors.black
                ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                  title: "Shipping charge", 
                  fontSize: 18, 
                  fontWeight: FontWeight.w500, 
                  color: Colors.black
                ),
                CustomText(
                  title: "\$100.00", 
                  fontSize: 18, 
                  fontWeight: FontWeight.w500, 
                  color: Colors.black
                ),
                ],
              ),
              SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                    title: "CART TOTAL", 
                    fontSize: 18, 
                    fontWeight: FontWeight.w500, 
                    color: Colors.black
                  ),
                  CustomText(
                    title: "\$1160.00", 
                    fontSize: 18, 
                    fontWeight: FontWeight.w500, 
                    color: Colors.black
                  ),
                  ],
                ),
            ],
          ),
        );
  }