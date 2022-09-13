import 'package:druto/utils/constant/theme.dart';
import 'package:druto/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';


class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PTheme.paddingX,vertical: PTheme.paddingy),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CustomText(
            title: "Privacy Policy", 
            fontSize: 26, 
            fontWeight: FontWeight.w700, 
            color: Colors.black
            ),
            SizedBox(height: 40,),
            CustomText(
            title: "Who we are", 
            fontSize: 18, 
            fontWeight: FontWeight.w700, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: "Our website address is: https://drutoshop.com.", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: "This privacy policy governs your use of The Grocery Shop application for mobile devices, desktops and laptops . The Mobile App and Web App are providing a solution for online grocery delivery.", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: "Security & Privacy Policy ", 
            fontSize: 18, 
            fontWeight: FontWeight.w700, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: "What is Personal Data?", 
            fontSize: 18, 
            fontWeight: FontWeight.w700, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: "Contact forms", 
            fontSize: 18, 
            fontWeight: FontWeight.w700, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select “Remember Me”, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            SizedBox(height: 20,),
            CustomText(
            title: """If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day""", 
            fontSize: 14, 
            fontWeight: FontWeight.w300, 
            color: Colors.black
            ),
            
          ],
          ),
        ),
      )
     ),
   ); 
  }
}