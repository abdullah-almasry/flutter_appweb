import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_ar/widget/buttontophome.dart';
import 'package:flutterappweb/lang_ar/widget/home_desktop.dart';
import 'package:flutterappweb/lang_ar/widget/logo_text.dart';
import 'package:flutterappweb/lang_ar/widget/slider.dart';

import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class model {
  final String string1;

  model(this.string1);
}

class _HomeState extends State<Home> {
  Color colorwhITE = Colors.yellowAccent;
  bool isSelcted = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: HomeDesktop(),
        mobile: Mobile(),
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ButtontopHome(),
              ],
            ),
          ),
          Container(
              height: size.height * 0.80,
              width: size.width,
              child: Logo_Text()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: size.height * 0.40,
                width: double.infinity,
                child: Slider1()),
          ),
        ],
      ),
    );
  }
}
