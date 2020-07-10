import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_ar/Screens/Station.dart';
import 'package:flutterappweb/lang_ar/Screens/about.dart';
import 'package:flutterappweb/lang_ar/Screens/call.dart';
import 'package:flutterappweb/lang_ar/Screens/home.dart';
import 'package:flutterappweb/lang_ar/Screens/sevice.dart';
import 'package:flutterappweb/lang_en/Screens/Station.dart';
import 'package:flutterappweb/lang_en/Screens/call.dart';
import 'package:flutterappweb/lang_en/Screens/home.dart';
import 'package:flutterappweb/lang_en/Screens/sevice.dart';


import 'lang_en/Screens/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الوقود والطاقة',
      routes: {
        //ar
        '/about': (context) => About(),
        '/service': (context) => Service(),
        '/Station': (context) => Station(),
        '/call': (context) => CallUs(),
        '/home': (context) => Home(),
        //en
        '/HomeEn':(context)=>HomeEN(),
        '/aboutEN': (context) => AboutEN(),
        '/serviceEN': (context) => ServiceEN(),
        '/StationEN': (context) => StationEN(),
        '/callEN': (context) => CallUsEN(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Schyler",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),


      home: Home(),
    );
  }
}
