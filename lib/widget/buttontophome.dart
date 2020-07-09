import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/Screens/about.dart';

class ButtontopHome extends StatelessWidget {
  Color yellow = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
            hoverColor: Color(0xFFff9c46),
            onPressed: () {
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
              Navigator.of(context).pushNamed('/call');
            },
            child: Text("اتصل بنا",
                style: TextStyle(
                    color: yellow, fontSize: 22, fontWeight: FontWeight.bold))),
        FlatButton(
            hoverColor: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).pushNamed('/Station');
            },
            child: Text("محطاتنا",
                style: TextStyle(
                    fontSize: 22, color: yellow, fontWeight: FontWeight.bold))),
        FlatButton(
            hoverColor: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).pushNamed('/service');
            },
            child: Text("خدمتنا",
                style: TextStyle(
                    color: yellow, fontSize: 22, fontWeight: FontWeight.bold))),
        FlatButton(
            hoverColor: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).pushNamed('/about');
            },
            child: Text("عن الشركة",
                style: TextStyle(
                    color: yellow, fontSize: 22, fontWeight: FontWeight.bold))),
        FlatButton(
            hoverColor: Colors.blueAccent,
            onPressed: () {Navigator.of(context).pushNamed('/home');},
            child: Text("الرئيسية",
                style: TextStyle(
                    color: yellow, fontWeight: FontWeight.bold, fontSize: 22))),
      ],
    );
  }
}
