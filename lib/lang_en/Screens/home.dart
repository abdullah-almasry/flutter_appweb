import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_en/widget/buttontophome.dart';
import 'package:flutterappweb/lang_en/widget/home_desktop.dart';
import 'package:flutterappweb/lang_en/widget/logo_text.dart';
import 'package:flutterappweb/lang_en/widget/slider.dart';

import 'package:responsive_builder/responsive_builder.dart';

class HomeEN extends StatefulWidget {
  @override
  _HomeENState createState() => _HomeENState();
}

class model {
  final String string1;

  model(this.string1);
}

class _HomeENState extends State<HomeEN> {
  Color colorwhITE = Colors.yellowAccent;
  bool isSelcted = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: HomeDesktopEN(),
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
                ButtontopHomeEn(),
              ],
            ),
          ),
          Container(
              height: size.height * 0.80,
              width: size.width,
              child: Logo_TextEN()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: size.height * 0.40,
                width: double.infinity,
                child: Slider1EN()),
          ),
        ],
      ),
    );
  }
}
