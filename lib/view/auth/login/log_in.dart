import 'package:druto/utils/constant/theme.dart';
import 'package:druto/utils/widgets/buttons/custom_button.dart';
import 'package:druto/utils/widgets/buttons/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/constant/function/method_divider.dart';
import '../../../utils/constant/function/sign_after_before.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isTap = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: PTheme.paddingy),
            child: Column(
              children: [
                CustomText(
                    title: "Welcome To",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/cart.png",
                          scale: 2.5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                title: "Druto Shop",
                                fontSize: 48,
                                fontWeight: FontWeight.w700,
                                color: PTheme.buttonPrimary),
                            CustomText(
                                title:
                                    "E    N    J    O    Y    Y    O    U    R    S    H    O    P    P    I    N    G",
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: PTheme.paddingX),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          title: "Login",
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          CustomText(
                              title: "User Name or Email Address",
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
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 20,
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
                              title: "Remember me",
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: 30,
                        child: CustomButton(
                          title: "SUBMIT",
                          color: PTheme.buttonTextBlack,
                          onTap: () {},
                          radius: PTheme.buttonShape,
                          primary: PTheme.buttonPrimary,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          width < 1050 ? SignBefore() : SignAfter(),
                          SizedBox(
                            height: 20,
                          ),
                          width < 780
                              ? DividerBefore(context)
                              : DividerAfter(context)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
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
                      Image.asset(
                        "assets/plogo.png",
                        scale: 2.5,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
