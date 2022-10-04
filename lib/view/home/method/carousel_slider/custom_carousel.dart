import 'package:carousel_slider/carousel_slider.dart';
import 'package:druto/utils/constant/theme.dart';
import 'package:flutter/material.dart';




class CustomCarousel extends StatefulWidget {
  const CustomCarousel({Key? key}) : super(key: key);

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {

int _current = 0;

List<String>image=[
"assets/banner.png",
"assets/hill.png",
"assets/hat.png",
"assets/hoodies.png",
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            
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
                  print('_current: $_current');
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

            Positioned(
               bottom: 1,
              left: MediaQuery.of(context).size.width /2.2,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              for (int i = 0; i < image.length; i++)
                Container(
                 
                  width: 12,
                  height: 12,
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 3,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == i ? PTheme.buttonPrimary : Colors.white.withOpacity(0.8),
                  ),
                )
                      ],
                    ),
            ),
          
        ],
      ),
    );
  }
}