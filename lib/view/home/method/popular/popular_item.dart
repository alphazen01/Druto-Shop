import 'package:druto/view/home/method/popular/popular_list.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constant/theme.dart';
import '../../../../utils/widgets/buttons/custom_button.dart';
import '../../../../utils/widgets/custom_text.dart';
import '../../../details/details.dart';

Container PopularItem(BuildContext context) {
    return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height/3,
    child: GridView.builder(
      scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: PTheme.paddingX),
        itemCount: popularListItem.length,
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
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)),
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
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailsScreen()));
                              },
                            child: popularListItem[index].image
                            )
                            ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xffFF0404),
                            size: 30,
                          ),
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
                                title: popularListItem[index].title,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                            popularListItem[index].star
                          ],
                        ),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                title: popularListItem[index].price,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.redAccent),
                            Text(
                              popularListItem[index].disconut,
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
        }),
  );
  }