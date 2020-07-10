


import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ButtontopHome extends StatelessWidget {
  Color yellow = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
              hoverColor: Color(0xFFff9c46),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/HomeEn');
              },
              child: Text(
                "EN",
                style: TextStyle(
                  color: yellow,
                  fontSize: 22,
                ),
              )),

          FlatButton(
              hoverColor: Colors.blueAccent,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/call');
              },
              child: Text("اتصل بنا",
                  style: TextStyle(
                      color: yellow, fontSize: 22, fontWeight: FontWeight.bold))),
          FlatButton(
              hoverColor: Colors.blueAccent,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/Station');
              },
              child: Text("محطاتنا",
                  style: TextStyle(
                      fontSize: 22, color: yellow, fontWeight: FontWeight.bold))),
          FlatButton(
              hoverColor: Colors.blueAccent,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/service');
              },
              child: Text("خدمتنا",
                  style: TextStyle(
                      color: yellow, fontSize: 22, fontWeight: FontWeight.bold))),
          FlatButton(
              hoverColor: Colors.blueAccent,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/about');
              },
              child: Text("عن الشركة",
                  style: TextStyle(
                      color: yellow, fontSize: 22, fontWeight: FontWeight.bold))),
          FlatButton(
              hoverColor: Colors.blueAccent,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Text("الرئيسية",
                  style: TextStyle(
                      color: yellow, fontWeight: FontWeight.bold, fontSize: 22))),
        ],
      ),
    );
  }
}
