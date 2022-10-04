import 'package:druto/view/home/method/popular/popular_list.dart';
import 'package:druto/view/home/method/product/product_list.dart';
import 'package:druto/view/home/method/trending_deals/trending_list.dart';
import 'package:flutter/material.dart';
import 'package:druto/view/home/method/popular/popular_list.dart';

import '../../../../utils/constant/theme.dart';
import '../../../../utils/widgets/buttons/custom_button.dart';
import '../../../../utils/widgets/custom_text.dart';
import '../../../details/details.dart';

Container TrendingItem(BuildContext context) {
    return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height/3,
    child: ListView.separated(
      
      scrollDirection: Axis.horizontal,
      itemCount: trendingListItem.length,
    itemBuilder: ((context, index) {
      return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 100,
              width: 150,
            decoration: BoxDecoration(
              color: Color(0xff0494C8),
            borderRadius: BorderRadius.circular(10)),
              child:Center(
                child: Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 200,
                       child: trendingListItem[index].image ,
                        decoration: BoxDecoration(
    
                        ),
                      ),
                    Positioned(
                      top: 70,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: PTheme.gPaddingX),
                        padding: EdgeInsets.symmetric(horizontal: PTheme.gPaddingX),
                        width: 200,
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                            title: "Super Flash Sale", 
                            fontSize: 16, 
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                            ),
                            CustomText(
                            title: "50% off", 
                            fontSize: 12, 
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                            ),
                            SizedBox(
                             
                              height: 20,
                              child: CustomButton(
                              title: "SUBMIT",
                              fontSize: 10,
                              color: PTheme.buttonTextBlack,
                              onTap: () {
                                
                              },
                              radius: 5,
                              primary: Colors.white,
                            ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
    
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
          );
    }), 
    separatorBuilder: (context,index){
      return SizedBox(width: 10,);
    }, 
    
    )
  );
  }