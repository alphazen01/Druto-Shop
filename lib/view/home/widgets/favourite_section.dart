import 'package:flutter/material.dart';

import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/buttons/custom_button.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../favourite/favourite_list_item.dart';

class FavoriteSection extends StatelessWidget {
  const FavoriteSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:  MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: PTheme.paddingX),
                itemCount: favouriteListItem.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 
                    (MediaQuery.of(context).size.width ~/ 250).toInt(),
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
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: favouriteListItem[index].image),
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
                                        title: favouriteListItem[index].title,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                    favouriteListItem[index].star
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                        title: favouriteListItem[index].price,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.redAccent),
                                    Text(
                                      favouriteListItem[index].disconut,
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
          )
        ],
      ),
    );
  }
}
