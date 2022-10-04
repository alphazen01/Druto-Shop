
import 'package:flutter/material.dart';


import '../../../utils/widgets/buttons/custom_button.dart';
import '../../../utils/widgets/custom_textfield.dart';
import '../../utils/constant/theme.dart';
import '../../utils/widgets/custom_text.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {

TextEditingController nameController = new TextEditingController();
TextEditingController emailController = new TextEditingController();
TextEditingController phoneController = new TextEditingController();
TextEditingController addressController = new TextEditingController();
TextEditingController messageController = new TextEditingController();



  bool isTap = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: PTheme.paddingX,vertical: PTheme.paddingy),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CustomText(
              title: "Leave a message", 
              fontSize: 26, 
              fontWeight: FontWeight.w700, 
              color: Colors.black
               ),
                SizedBox(
                height: 30,
                ),
               Row(
                children: [
                Expanded(
                child: Container(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CustomText(
                title: "Your name", 
                fontSize: 16, 
                fontWeight: FontWeight.w500, 
                color: Colors.black
                ),
                CustomTextfield(
                controller: nameController,
                readOnly: false,
                obscureText: false,
                ),
                ],
                ),
                ),
                ),
                SizedBox(width: 25,),
                Expanded(
                child: Container(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CustomText(
                title: "Your email", 
                fontSize: 16, 
                fontWeight: FontWeight.w500, 
                color: Colors.black
                ),
                CustomTextfield(
                controller: emailController,
                readOnly: false,
                obscureText: false,
                ),
                ],
                ),
                ),
                ),   
                ],
               ),
               SizedBox(height: 25,),
               Row(
                children: [
                Expanded(
                child: Container(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CustomText(
                title: "Your phone", 
                fontSize: 16, 
                fontWeight: FontWeight.w500, 
                color: Colors.black
                ),
                CustomTextfield(
                controller: phoneController,
                readOnly: false,
                obscureText: false,
                ),
                ],
                ),
                ),
                ),
                SizedBox(width: 25,),
                Expanded(
                child: Container(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CustomText(
                title: "Address", 
                fontSize: 16, 
                fontWeight: FontWeight.w500, 
                color: Colors.black
                ),
                CustomTextfield(
                controller: addressController,
                readOnly: false,
                obscureText: false,
                ),
                ],
                ),
                ),
                ),   
                ],
               ),
               SizedBox(
                height: 25,
               ),
               Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CustomText(
                title: "Your message",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black),
                Container(
                width: double.infinity,
                height: 200,
                child: Column(
                children: [
                TextField(
                controller: messageController,
                maxLines: 8,
                decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none)),
                ),
                ],
                ),
                decoration: BoxDecoration(
                border: Border.all(color: Colors.black)),
                ),
                SizedBox(
                height: 25,
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                ClipOval(
                child: Material(
                child: IconButton(
                onPressed: () {
                setState(() {
                isTap = !isTap;
                });
                },
                icon: isTap
                ? Icon(
                Icons.check_box_outline_blank,
                color: Colors.grey,
                )
                : Icon(
                Icons.check_box_outlined,
                color: Colors.grey,
                ),
                ),
                ),
                ),
                CustomText(
                title: "I agree to the",
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black
                ),
                CustomText(
                title: " terms and Privecy Policy.",
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: PTheme.buttonPrimary
                ),
                ],
                ),
                SizedBox(height: 40,),
                CustomText(
                title: "Social Media", 
                fontSize: 20, 
                fontWeight: FontWeight.w700, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                title: "Let us think of education as the means of developing our greatest abilities, because in each of us there is a private hope and dream which, fulfilled.", 
                fontSize: 16, 
                fontWeight: FontWeight.w300, 
                color: Colors.black
                ),
                SizedBox(height: 20,),
                Row(
                children: [
                CustomText(
                title: "Follow Us on",
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: PTheme.buttonPrimary
                ),

                Container(
                width: 300,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Image.asset(
                "assets/facebook.png",
                 scale: 2.5,
                ),
                Image.asset(
                "assets/twiter.png",
                 scale: 2.5,
                 ),
                 Image.asset(
                 "assets/linkdin.png",
                 scale: 2.5,
                 ),
                       
                ],
                ),
                )
                ],
                ),
                ],
               ),
               SizedBox(height: 40,),
               Center(
              child: SizedBox(
              width: MediaQuery.of(context).size.width / 3.5,
              height: 30,
              child: CustomButton(
              title: "SUBMIT NOW",
              fontWeight: FontWeight.w700,
              color: PTheme.buttonTextBlack,
              onTap: () {},
              radius: PTheme.buttonShape,
              primary: PTheme.buttonPrimary,
              ),
              ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}