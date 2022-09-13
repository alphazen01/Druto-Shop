import 'dart:html';

import 'package:druto/view/auth/login/log_in.dart';
import 'package:druto/view/auth/signup/sign_up.dart';
import 'package:druto/view/privacry_policy/privacy_policy.dart';
import 'package:druto/view/profile/profile_screen.dart';
import 'package:druto/view/returns_refund/returns_refund.dart';
import 'package:druto/view/terms_condition/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant/theme.dart';
import '../../utils/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



int selectedIndex=0;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        body: Column(
          children: [
          CustomAppBar(context),
          ],
        ),
      ),
    );
  }

  Row CustomAppBar(BuildContext context) {
    return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Builder(builder: (context) {
          return IconButton(
          onPressed: () {
          Scaffold.of(context).openDrawer();
          },
          icon: Icon(
          Icons.menu,
          size: 32,
          ));
          }),
          SizedBox(width: 20,),
          Row(
          children: [
          Image.asset(
          "assets/cart.png",
          scale: 4,
          ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CustomText(
          title: "Druto Shop",
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: PTheme.buttonPrimary),
          CustomText(
          title:
          "E    N    J    O    Y    Y    O    U    R    S    H    O    P    P    I    N    G",
          fontSize: 4,
          fontWeight: FontWeight.w700,
          color: Colors.black
          ),
          ],
          ),
          Container(
          width: MediaQuery.of(context).size.width/3,
          height: 50,
          child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: homeAppBarItem.length,
          itemBuilder: (context,int index){
          return Row(
            children: [
              Material(
                color: selectedIndex==index?PTheme.buttonPrimary:Colors.white,
                child:InkWell(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>homeAppBarItem[index].screen!));
                  },
                  child: homeAppBarItem[index].icon!
                )
              ),
            ],
          );
          }, 
          separatorBuilder: (context,int index){
          return SizedBox(width: 10,);
          },
          ),
          ), 
          ],
          ),
          ],
         );
  }
}


class HomeAppBar{


HomeAppBar({
 this.icon,
this.screen
});
Widget? icon;
Widget? screen;

}
List<HomeAppBar>homeAppBarItem = [
  HomeAppBar(
  icon:Icon(Icons.email_outlined),
  screen: ProfileScreen()
  ),
  HomeAppBar(
  icon:Icon(Icons.notifications),
  screen: SignUpScreen()
  ),
   HomeAppBar(
  icon:Icon(Icons.favorite_outline),
  screen: PrivacyPolicyScreen(),
  ),
   HomeAppBar(
  icon:Icon(Icons.shopping_cart),
  screen: ReturnsRefundScreen()
  ),
   HomeAppBar(
  icon:Icon(Icons.person),
screen: TermsConditionScreen(),
  ),
  HomeAppBar(
  icon:CustomText(
  title: "Login", 
  fontSize: 18, 
  fontWeight: FontWeight.w700, 
  color: Colors.black
  ),
  screen: LogInScreen()
  ),


 
  
  
  
];