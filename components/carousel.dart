import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Carousels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      width: double.maxFinite,
      child: Carousel(
        images: [
          NetworkImage("https://ed-en.pro/images/slider/16144189951.png", scale: 1),
          NetworkImage(
              "https://ed-en.pro/images/slider/1614419424Home%20page%20sliders.png")
        ],
        // animationCurve: Curves.easeInOutBack,
        autoplay: true,
        //boxFit: BoxFit.fitWidth,
      ),
    );
  }
}
