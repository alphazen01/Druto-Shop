import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/custom_text.dart';
import '../home.dart';

class Just extends StatefulWidget {
  const Just({Key? key}) : super(key: key);

  @override
  State<Just> createState() => _JustState();
}

class _JustState extends State<Just> {
  int selectedIndex=0;


bool tap = false;
bool loading = false;
  @override
  Widget build(BuildContext context) {
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