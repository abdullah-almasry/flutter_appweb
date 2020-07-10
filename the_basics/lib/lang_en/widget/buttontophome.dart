import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtontopHomeEn extends StatelessWidget {
  Color yellow = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
            hoverColor: Color(0xFFff9c46),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            child: Text(
              "ع",
              style: TextStyle(
                color: yellow,
                fontSize: 26,
              ),
            )),
        FlatButton(
            hoverColor: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/callEN');
            },
            child: Text("Call Us",
                style: TextStyle(
                    color: yellow, fontSize: 22, fontWeight: FontWeight.bold))),
        FlatButton(
            hoverColor: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/StationEN');
            },
            child: Text("Our Station",
                style: TextStyle(
                    fontSize: 22, color: yellow, fontWeight: FontWeight.bold))),
        FlatButton(
            hoverColor: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/serviceEN');
            },
            child: Text("Services",
                style: TextStyle(
                    color: yellow, fontSize: 22, fontWeight: FontWeight.bold))),
        FlatButton(
            hoverColor: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/aboutEN');
            },
            child: Text("About",
                style: TextStyle(
                    color: yellow, fontSize: 22, fontWeight: FontWeight.bold))),
        FlatButton(
            hoverColor: Colors.blueAccent,
            onPressed: () {Navigator.of(context).pushReplacementNamed('/HomeEn');},
            child: Text("Home",
                style: TextStyle(
                    color: yellow, fontWeight: FontWeight.bold, fontSize: 22))),
      ],
    );
  }
}
