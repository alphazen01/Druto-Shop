import 'package:druto/view/favourite/favourite_list_item.dart';
import 'package:druto/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant/theme.dart';
import '../../utils/widgets/buttons/custom_button.dart';
import '../../utils/widgets/custom_text.dart';
import '../home/widgets/favourite_section.dart';

class FavouritScreen extends StatefulWidget {
  const FavouritScreen({Key? key}) : super(key: key);

  @override
  State<FavouritScreen> createState() => _FavouritScreenState();
}

class _FavouritScreenState extends State<FavouritScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FavoriteSection(),
    );
  }
}

