import 'package:flutter/material.dart';


import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/buttons/custom_button.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

   TextEditingController nameController = new TextEditingController();
   TextEditingController phoneController = new TextEditingController();
   TextEditingController emailController = new TextEditingController();
   TextEditingController passwordController = new TextEditingController();
    TextEditingController confirmPaswordController = new TextEditingController();





  bool isTap = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PTheme.paddingX),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              CustomText(
                  title: "SIGNUP",
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  CustomText(
                      title: "Name",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  CustomText(
                      title: "*",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                ],
              ),
              CustomTextfield(
                controller:nameController ,
                readOnly: false,
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                      title: "Phone Number",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  CustomText(
                      title: "*",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                ],
              ),
              CustomTextfield(
                controller: passwordController,
                readOnly: false,
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                      title: "Email",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  CustomText(
                      title: "*",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                ],
              ),
              CustomTextfield(
                controller: emailController,
                readOnly: false,
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                      title: "Password",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  CustomText(
                      title: "*",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                ],
              ),
              CustomTextfield(
                controller: passwordController,
                readOnly: false,
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                      title: "Confirm Password",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  CustomText(
                      title: "*",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                ],
              ),
              CustomTextfield(
                controller: confirmPaswordController,
                readOnly: false,
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
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
                      title: "Remember me",
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3.5,
                height: 30,
                child: CustomButton(
                  title: "SUBMIT",
                  color: PTheme.buttonPrimary,
                  onTap: () {},
                  radius: PTheme.buttonShape,
                  primary: PTheme.buttonTextBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
