import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class AddsSlider extends StatefulWidget {
  const AddsSlider({Key? key}) : super(key: key);

  @override
  State<AddsSlider> createState() => _AddsSliderState();
}

class _AddsSliderState extends State<AddsSlider> {


List<String>image=[
"assets/adds.png",

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
        autoPlay: true,
            enlargeCenterPage: false,
            onPageChanged:  (index, reason) {
          setState(() {

          
          });
        }  
          ),
      items: image.map((item) {
        return Builder(
          builder: (BuildContext context, ) {
            return Container(
              
              // margin: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
              item,
              
              
             
             

              
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