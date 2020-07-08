import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/Screens/Station.dart';
import 'package:flutterappweb/Screens/about.dart';
import 'package:flutterappweb/Screens/call.dart';
import 'package:flutterappweb/Screens/home.dart';
import 'package:flutterappweb/Screens/sevice.dart';
import 'package:flutterappweb/widget/buttontophome.dart';
import 'package:flutterappweb/widget/constans.dart';

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
        '/about': (context) => About(),
        '/service': (context) => Service(),
        '/Station': (context) => Station(),
        '/call': (context) => CallUs(),
        '/home': (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Schyler",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CallUs(),
    );
  }
}
