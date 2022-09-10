import 'package:druto/view/auth/login/log_in.dart';
import 'package:druto/view/auth/profile/leave_message.dart';
import 'package:druto/view/auth/profile/profile_screen.dart';
import 'package:druto/view/auth/signup/sign_up.dart';
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
      home: LeaveMessageScreen() 
    );
  }
}
