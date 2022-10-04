import 'package:csc_picker/csc_picker.dart';
import 'package:druto/view/home/widgets/profile_section.dart';

import 'package:flutter/material.dart';


import '../../../utils/constant/theme.dart';
import '../../../utils/widgets/buttons/custom_button.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ProfileSection()
        ),
      ),
    );
  }
}









