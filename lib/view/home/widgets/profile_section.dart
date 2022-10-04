import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/buttons/custom_button.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {

  TextEditingController firstNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController genderController = new TextEditingController();
  TextEditingController countryController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController emailrController = new TextEditingController();
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPaswordController = new TextEditingController();

  var items = [
    "Male",
    "Female",
    "Other",
  ];

  String countryValue = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: PTheme.paddingX, vertical: PTheme.paddingy),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomText(
              title: "PROFILE CREATE",
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.black),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              CustomText(
                  title: "First Name",
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
            controller: firstNameController,
            readOnly: false,
            obscureText: false,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CustomText(
                  title: "Last Name",
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
            controller: lastNameController,
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
            controller: phoneController,
            readOnly: false,
            obscureText: false,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 210,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          CustomText(
                              title: "Gender",
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
                      Container(
                        height: 50,
                        child: CustomTextfield(
                            controller: genderController,
                            readOnly: true,
                            
                            suffixIcon: ClipOval(
                              child: Material(
                                child: PopupMenuButton<String>(
                                  icon: ClipOval(
                                      child: Material(
                                          child: const Icon(
                                              Icons.arrow_drop_down,
                                              color: PTheme.buttonPrimary))),
                                  onSelected: (String value) {
                                    genderController.text = value;
                                  },
                                  itemBuilder: (BuildContext context) {
                                    return items.map<PopupMenuItem<String>>(
                                        (String value) {
                                      return new PopupMenuItem(
                                          textStyle:
                                              TextStyle(color: Colors.red),
                                          child: new Text(
                                            value,
                                          ),
                                          value: value);
                                    }).toList();
                                  },
                                ),
                              ),
                            ),
                            obscureText: false),
                      ),
                      Row(
                        children: [
                          CustomText(
                              title: "Select Country",
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
                      Container(
                        child: CSCPicker(
                          showCities: false,
                          showStates: false,
                          countrySearchPlaceholder: "Country",
                          countryDropdownLabel: countryValue,
                          onCountryChanged: (value) {
                            setState(() {
                              countryValue = value;
                            });
                          },
                          dropdownDecoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black, width: 1)),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                            title: "Address",
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
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: 150,
                      child: Column(
                        children: [
                          TextField(
                            controller: addressController,
                            maxLines: 6,
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
                  ],
                ),
              ],
            ),
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
            controller: emailrController,
            readOnly: false,
            obscureText: false,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CustomText(
                  title: "Change User Name",
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
            controller: userNameController,
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
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3.5,
            height: 30,
            child: CustomButton(
              title: "SUBMIT",
              color: Colors.black,
              onTap: () {},
              radius: PTheme.buttonShape,
              primary: PTheme.buttonPrimary,
            ),
          ),
        ],
      ),
    );
  }
}