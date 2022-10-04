import 'package:druto/view/home/method/Brand/brand_list.dart';
import 'package:flutter/material.dart';


Container BrandItem(BuildContext context) {
    return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height/3,
    child: ListView.separated(
      
      scrollDirection: Axis.vertical,
      itemCount: brandListItem.length,
    itemBuilder: ((context, index) {
      return 
       Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle
        ),
        child: brandListItem[index].image,
        
       );
 
    }), 
    separatorBuilder: (context,index){
      return SizedBox(width: 20,);
    }, 
    
    )
  );
  }