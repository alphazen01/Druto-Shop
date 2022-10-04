import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant/theme.dart';
import '../../utils/widgets/custom_text.dart';
import '../home/widgets/notifiaction_section.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: NotificationSection(),
      ),
    );
    
  }
}


class NotificationList {

NotificationList({
required this.image,
required this.title,
required this.description,
required this.time,
});
Widget image;
Widget title;
String description;
Widget time;




}

List<NotificationList>notificationItem =[

  NotyList(),
  NotyList(),
  NotyList(),
  NotyList(),
  NotyList(),
  NotyList(),
  NotyList(),
  NotyList(),








];

NotificationList NotyList() {
  return NotificationList(
image: Image.asset("assets/men_t.png"), 
title: Row(
  children: [
  CustomText(
  title: "Jone Due", 
  fontSize: 18, 
  fontWeight: FontWeight.w700, 
  color: Colors.black
  ),
// SizedBox(width: 5,),
Expanded(
  child:   CustomText(
  title: " post an order",  
  fontSize: 18,  
  fontWeight: FontWeight.w500,  
  color: Colors.black 
  ),
),


  ],
), 
description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
time: CustomText(
title: "10 min ago", 
fontSize: 18, 
fontWeight: FontWeight.w700, 
color: Colors.black
),
);
}