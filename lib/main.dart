

import 'package:druto/view/cart/cart_screen.dart';
import 'package:druto/view/home/home.dart';
import 'package:druto/view/privacry_policy/privacy_policy.dart';
import 'package:druto/view/returns_refund/returns_refund.dart';
import 'package:druto/view/terms_condition/terms_condition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: CartScreen() 
    );
  }
}
