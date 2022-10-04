
import 'package:druto/view/cart/cart_function/cart_tab.dart';
import 'package:druto/view/cart/cart_function/cart_total.dart';
import 'package:druto/view/cart/cart_function/coupon_total.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant/theme.dart';
import '../../utils/widgets/buttons/custom_button.dart';
import '../home/widgets/cart_section.dart';
import 'cart_function/cart_list_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CartSection(),
      ),
    );
  }

  
 

  

}

