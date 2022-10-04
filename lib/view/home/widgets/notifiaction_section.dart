import 'package:flutter/material.dart';

import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../notification/notification.dart';

class NotificationSection extends StatefulWidget {
  const NotificationSection({
    Key? key,
  }) : super(key: key);

  @override
  State<NotificationSection> createState() => _NotificationSectionState();
}

class _NotificationSectionState extends State<NotificationSection> {

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.white,
      margin: EdgeInsets.only(right: 100),
      width: MediaQuery.of(context).size.width/2.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width:MediaQuery.of(context).size.width/2.5,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: PTheme.buttonPrimary
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                        Icons.notifications_outlined,
                        color:  Colors.black,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                            },
                            child: CustomText(
                            title: "Notifications (5)", 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500, 
                             color:  Colors.black
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: SizedBox()),
                        Icon(
                          Icons.email_outlined,
                           color: Colors.grey,
                          ),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                            },
                            child: CustomText(
                            title: "Messages (2)", 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500, 
                            color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
           
          ),
         
          Container(
            
            width: MediaQuery.of(context).size.width/2.5,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.3,
                color: PTheme.buttonPrimary
              )
            ),
            child:
            // Container(
            //   width: 100,
            //   height: 100,
            //   color: isTap? Colors.red:Colors.teal,
            // )

             ListView.separated(
            itemCount: notificationItem.length,
            itemBuilder: (context,int index){
              return Card(
                elevation: 2,
                child: ListTile(
                  leading:
                  notificationItem[index].image,
                  title: notificationItem[index].title,
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                      title: notificationItem[index].description, 
                      fontSize: 14, 
                      fontWeight: FontWeight.w400, 
                      color: Colors.black
                      ),
                      notificationItem[index].time
                    ],
                  ),
                ),
              );
            }, 
            separatorBuilder: (context,int index){
              return SizedBox(height: 5,);
            }, 
            )
          )
          
        ],
      ),
    );
  }
}