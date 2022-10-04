import 'package:druto/utils/constant/theme.dart';
import 'package:druto/view/contact/contact_screen.dart';
import 'package:druto/view/message/message.dart';
import 'package:druto/view/privacry_policy/privacy_policy.dart';
import 'package:druto/view/profile/profile_screen.dart';
import 'package:druto/view/returns_refund/returns_refund.dart';
import 'package:druto/view/terms_condition/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            child: ListView.separated(
            itemCount: drawerListItem.length,
            itemBuilder: (context,int index){
              return ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>drawerListItem[index].screen));
                },
                title: Text(
                  drawerListItem[index].title
                ),
              );
            }, 
            separatorBuilder: (context,int index){
              return Divider(
                color: PTheme.buttonPrimary,
              );
            }, 
            
            ),
          )
        ],
      )
    );
  }
}
 class DrawerList{
  Widget screen;
  String title;

DrawerList({
required this.title,
required this.screen
});

 }

 List <DrawerList> drawerListItem =[

DrawerList(
title: "Privacy Policy", 
screen: PrivacyPolicyScreen()
),
DrawerList(
title: "Terms And Condition", 
screen: TermsConditionScreen()
),
DrawerList(
title: "Returns And Refunds", 
screen: ReturnsRefundScreen()
),
DrawerList(
title: "Leave a message", 
screen: ContactUsScreen()
),
DrawerList(
title: "Profile", 
screen: ProfileScreen()
),





 ];