import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OfferSlider extends StatefulWidget {
  const OfferSlider({Key? key}) : super(key: key);

  @override
  State<OfferSlider> createState() => _OfferSliderState();
}

class _OfferSliderState extends State<OfferSlider> {

  int _current = 0;

List<String>image=[
"assets/offer_banner.png",

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            
      width: double.infinity,
      height: MediaQuery.of(context).size.height/3,
      child: 
      CarouselSlider(  
      options: CarouselOptions(
        autoPlay: false,
            enlargeCenterPage: false,
            onPageChanged:  (index, reason) {
          setState(() {
            _current = index;
            
          });
        }  
          ),
      items: image.map((item) {
        return Builder(
          builder: (BuildContext context, ) {
            return Container(
              color: Colors.teal,
              // margin: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
              item, 
              fit: BoxFit.cover,

              
              )
            );
          },
        );
      }).toList(),
        
    ),
      ),
    );
  }
}