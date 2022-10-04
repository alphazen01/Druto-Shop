

import 'package:flutter/material.dart';
import '../widgets/favourite_section.dart';

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

