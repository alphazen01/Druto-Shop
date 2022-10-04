import 'package:flutter/material.dart';

import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/custom_text.dart';
import '../method/message/message.dart';


class MessageSection extends StatefulWidget {
  const MessageSection({
    Key? key,
  }) : super(key: key);

  @override
  State<MessageSection> createState() => _MessageSectionState();
}

class _MessageSectionState extends State<MessageSection> {
 
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
                        // color:isSelected==true?  Colors.grey:Colors.black,
                         color:  Colors.grey,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){

                            },
                            child: CustomText(
                            title: "Notifications (5)", 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500, 
                            // color:isSelected==true?  Colors.grey:Colors.black
                             color: Colors.grey,
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
                          // color:isSelected==false?  Colors.grey:Colors.black,
                          color: Colors.black,
                          ),
                        Expanded(
                          child: InkWell(
                            onTap: (){

                            },
                            child: CustomText(
                            title: "Messages (2)", 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500, 
                            color:  Colors.black,
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

             ListView.separated(
            itemCount: messageItem.length,
            itemBuilder: (context,int index){
              return Card(
                elevation: 2,
                child: ListTile(
                  leading:
                  messageItem[index].image,
                  title: messageItem[index].title,
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                      title: messageItem[index].description, 
                      fontSize: 14, 
                      fontWeight: FontWeight.w400, 
                      color: Colors.black
                      ),
                      messageItem[index].time
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