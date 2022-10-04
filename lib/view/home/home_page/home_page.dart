



import 'package:druto/view/home/widgets/cart_section.dart';
import 'package:druto/view/home/widgets/favourite_section.dart';
import 'package:druto/view/home/widgets/login_section.dart';
import 'package:druto/view/home/widgets/notifiaction_section.dart';
import 'package:druto/view/home/widgets/profile_section.dart';
import 'package:flutter/material.dart';
import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/custom_text.dart';
import '../custom_drawer/custom_drawer.dart';
import 'home_section.dart';

import '../widgets/message_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

int selectedIndex=0;


bool tap = false;
bool loading = false;




  @override
  Widget build(BuildContext context,  ) {
    return Scaffold(
      drawer: Drawer(
        child:CustomDrawer()
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(context),
              tap==false? 
             HomeSection(context):SizedBox(),
              
             tap==true? selectedIndex==1?Stack(
                children: [
                 HomeSection(context),
                  Positioned(
                    top: 20,
                    right: 10,
                    child: 
                    MessageSection()
                  
      
                  ),
                ],
              ):SizedBox():SizedBox(),
              tap==true? selectedIndex==2?
              Stack(
                children: [
                  HomeSection(context),
                  Positioned(
                    top: 20,
                    right: 5,
                    child: 
                    NotificationSection()
                  ),
                ],
              ):SizedBox():SizedBox(),
              tap==true? selectedIndex==3?FavoriteSection()
              :SizedBox():SizedBox(),
              tap==true? selectedIndex==4?CartSection()
              :SizedBox():SizedBox(),
              tap==true? selectedIndex==5?ProfileSection()
              :SizedBox():SizedBox(),
               tap==true? selectedIndex==6?LoginSection()
              :SizedBox():SizedBox()
               
              
            ],
          ),
        ),
          
        
      
    );
  }
 

Row CustomAppBar(BuildContext context) {
    return 
     Row(
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
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
                Image.asset(
              "assets/cart.png",
              scale: 4,
              ),
                Column(

              children: [
              InkWell(
                onTap: (){
                   setState(() {
                    
                  });
                  tap=false;
                  
                  
                  
                },
                child: CustomText(
                title: "Druto Shop",
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: PTheme.buttonPrimary),
              ),
              CustomText(
              title:
              "E    N    J    O    Y    Y    O    U    R    S    H    O    P    P    I    N    G",
              fontSize: 4,
              fontWeight: FontWeight.w700,
              color: Colors.black
              ),
              ],
              ),
              SizedBox(width: 30,),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width/3,
                height: 30,
                child: 
                TextField(
                decoration: InputDecoration(
                    labelText: "Search Products here..........",
                  suffixIcon:Container(
                    height: 26,
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    color: PTheme.buttonPrimary,
                  child: Icon(Icons.search,size: 30,color: Colors.black,)
                  ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ), 
              
                ),
                )
                ),
              ),
              SizedBox(width: 30,),
                Container(
                margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width/3,
                        height: 50,
                        child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: homeAppBarItem.length,
                        itemBuilder: (context,int index){
                        return Row(
                          children: [
                            Material(
                              color:tap==true? selectedIndex==index?PTheme.buttonPrimary:Colors.white:Colors.white,
                              child:InkWell(
                                onTap: (){
                                  tap=true;
                                  setState(() {
                                  selectedIndex=index;
                                  });
                                //  Navigator.push(context, MaterialPageRoute(builder: (_)=>homeAppBarItem[index].screen!));
                                },
                                child: homeAppBarItem[index].icon!
                              )
                            ),
                          ],
                        );
                        }, 
                        separatorBuilder: (context,int index){
                        return SizedBox(width: 30,);
                        },
                        ),
                        ), 


                    ],
                  ),
                ],
              )
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
  icon:SizedBox(),
  // screen: ProfileScreen()
  ),
  HomeAppBar(
  icon:Icon(Icons.email_outlined),
  // screen: ProfileScreen()
  ),
  HomeAppBar(
  icon:Icon(Icons.notifications),
  // screen: SignUpScreen()
  ),
   HomeAppBar(
  icon:Icon(Icons.favorite_outline),
  // screen: PrivacyPolicyScreen(),
  ),
   HomeAppBar(
  icon:Icon(Icons.shopping_cart),
  // screen: ReturnsRefundScreen()
  ),
   HomeAppBar(
  icon:Icon(Icons.person),
// screen: TermsConditionScreen(),
  ),
  HomeAppBar(
  icon:CustomText(
  title: "Login", 
  fontSize: 18, 
  fontWeight: FontWeight.w700, 
  color: Colors.black
  ),
  // screen: LogInScreen()
  ),


 
  
  
  
];