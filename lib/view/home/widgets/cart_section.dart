import 'package:flutter/material.dart';

import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/buttons/custom_button.dart';
import '../../cart/cart_function/cart_list_item.dart';
import '../../cart/cart_function/cart_tab.dart';
import '../../cart/cart_function/cart_total.dart';
import '../../cart/cart_function/coupon_total.dart';

class CartSection extends StatelessWidget {
  const CartSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PTheme.paddingX,vertical: PTheme.paddingy),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height,
                   
                    
                    
                    child: Card(
                      elevation: 3,
                      child: Container(
                        color: Color(0xffC6D3D7),
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                              itemCount: cartListItem.length,
                              itemBuilder: (context,int index){
                                return Column(
                                  children: [
                                     CartTab(context),
                                     SizedBox(height: 10,),
                                     CartList(context,index),
                                  ],
                                );
                              }, 
                              separatorBuilder: (context,int index){
                                return SizedBox(
                                  height: 10,
                                );
                              },  
                              
                              ),
                            ),
                            SizedBox(height: 20,),
                            CartAllTotal(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CouponTotal(context),
              ],
            ),
            SizedBox(height: 40,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width /6,
                child: CustomButton(
                title: "PROCEED TO CHECKOUT",
                fontSize: 12,
                fontWeight: FontWeight.w700, 
                onTap: (){}, 
                radius: 5,
                primary: PTheme.buttonPrimary,
                color: PTheme.buttonTextBlack,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}