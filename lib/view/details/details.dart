import 'package:druto/utils/constant/theme.dart';
import 'package:druto/utils/widgets/custom_text.dart';
import 'package:druto/view/details/function/product_details.dart';
import 'package:druto/view/details/function/related_list.dart';
import 'package:flutter/material.dart';
import '../../utils/widgets/buttons/custom_button.dart';
import '../home/favourite/favourite_list_item.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  bool isSelected = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(
            title: "PRODUCT DETAILS", 
            fontSize: 32, 
            fontWeight: FontWeight.w700, 
            color: Colors.black
        ),
          ),
        ProductDetails(context),
        SizedBox(height: 20,),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 2,
                    color:  isSelected==false? PTheme.buttonPrimary:Colors.white
                  )
                )
              ),
              child: TextButton(
              onPressed: (){
                isSelected=false;
                setState(() {
                  
                });
                
              }, 
              child: CustomText(
              title: "DESCRIPTION", 
              fontSize: 18, 
              fontWeight: FontWeight.w700, 
              color: isSelected==false? Colors.black:Colors.grey
              ),
              ),
            ),
            
            SizedBox(width: 15,),
            Container(
               decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 2,
                    color:  isSelected==true? PTheme.buttonPrimary:Colors.white
                  )
                )
              ),
              child: TextButton(
              onPressed: (){
                isSelected=true;
               setState(() {
                 
               });
               
              }, 
              child: CustomText(
              title: "REVIEWS (0)", 
              fontSize: 18, 
              fontWeight: FontWeight.w700, 
              color: isSelected==true? Colors.black:Colors.grey
              )
          ),
            )
          ],
        ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 100,
            child:isSelected==false? CustomText(
            title: """Made up from 100% cotton fabrics this Baby Girls Long empire waist frock is featured with crew neck and long sleeves.Care Instructions:Machine Wash Warm, With Like Colours,Do Not Bleach,Tumble Dry Low,Warm Iron,Do Not Dry Clean.Colour May Vary Due to Studio lighting Effects.""", 
            fontSize: 14, 
            fontWeight: FontWeight.w500, 
            color: Colors.black
            ):CustomText(
            title: "REVIEWS", 
            fontSize: 24, 
            fontWeight: FontWeight.bold, 
            color: Colors.black
            ),
            
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: "RELATED PRODUCTS", 
                  fontSize: 24, 
                  fontWeight: FontWeight.w700, 
                  color: Colors.black
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                itemCount: favouriteListItem.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 200,
                    crossAxisSpacing: 30,
                    childAspectRatio: 2.5,
                    mainAxisSpacing: 8),
                itemBuilder: (context, int index) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 30,
                                child: Center(
                                  child: CustomText(
                                      title: "-15",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xff19647E),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.elliptical(20, 20),
                                        bottomRight:
                                            Radius.elliptical(20, 20))),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: relatedListItem[index].image,
                                  ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.favorite,
                                  color: Color(0xffFF0404),
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: PTheme.gPaddingX),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                        title: relatedListItem[index].title,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                    relatedListItem[index].star
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                        title: relatedListItem[index].price,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.redAccent),
                                    Text(
                                      relatedListItem[index].disconut,
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomButton(
                                      title: "Add to cart",
                                      onTap: () {},
                                      radius: 5,
                                      primary: PTheme.buttonPrimary,
                                      color: Colors.black,
                                    ),
                                    Container(
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
                                                color: Colors.black),
                                          ),
                                          CustomText(
                                              title: "1",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black),
                                          InkWell(
                                            onTap: () {},
                                            child: CustomText(
                                                title: "+",
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,)
        ],
        ),
      ),
    );
  }

}