import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant/theme.dart';
import '../../utils/widgets/custom_text.dart';
import '../home/widgets/message_section.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

bool isTap=true;
bool isTap2=true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: MessageSection(),
      ),
    );
    
  }
}


class MessageList {

MessageList({
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

List<MessageList>messageItem =[

  MessList(),
  MessList(),
  MessList(),
  MessList(),
  MessList(),
  MessList(),
  MessList(),
  MessList(),








];

MessageList MessList() {
  return MessageList(
image:CircleAvatar(
  radius: 25,
  backgroundColor: Colors.blue,
  child: CircleAvatar(
    radius: 23,
  backgroundColor: PTheme.buttonPrimary,

  ),
),
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
title: "2 min ago", 
fontSize: 18, 
fontWeight: FontWeight.w700, 
color: Colors.black
),
);
}
 