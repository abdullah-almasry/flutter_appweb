import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_en/widget/home_desktop.dart';
class Slider1EN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Carousel(
      boxFit: BoxFit.contain,
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 6.0,
      dotIncreasedColor: Color(0xFFFF335C),
      dotBgColor: Colors.transparent,
      dotPosition: DotPosition.topRight,
      dotVerticalPadding: 10.0,
      showIndicator: false,
      indicatorBgPadding: 7.0,
      images: [
        Carditem(
            "assets/img/backimg.jpg", "الضمان والامان"),
        Carditem(
            "assets/img/about-img1.jpg", "نقل الوقود"),
        Carditem("assets/img/img3.jpg", "الضمان والامان"),
        Carditem("assets/img/img4.jpg", "نقل الوقود"),
        Carditem("assets/img/img5.jpg", "الضمان والامان"),
      ],
    );
  }
}
