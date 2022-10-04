
import 'package:flutter/material.dart';

import '../../utils/constant/theme.dart';
import '../../utils/widgets/custom_text.dart';


class ReturnsRefundScreen extends StatelessWidget {
  const ReturnsRefundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PTheme.paddingX,vertical: PTheme.paddingy),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CustomText(
            title: "Returns and Refunds", 
            fontSize: 26, 
            fontWeight: FontWeight.w700, 
            color: Colors.black
            ),
            SizedBox(height: 40,),
            CustomText(
            title: "Please understand the product by explaining the delivery money to the delivery man in advance. Check the product while the delivery man is there. If you have any complaint within three days, the replacement facility will be given accordingly. No complaint consideration or replacement facility will be accepted after three days.", 
            fontSize: 18, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
           ],
          ),
        ),
      ),
    );
  }
}