import 'package:flutter/material.dart';

class Text_Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          "خدمة",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              fontFamily: "Schyler",
              color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "كما لم تراها من قبل",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 26, color: Colors.black),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "تهدف الشركة إلى تحقيق أفضل عائد اقتصاديورفع كفاءة مواردها البشرية ورفع كفاءة مواردها البشرية وتقديم أفضل الخدمات لعملائها من خلال التطوير المستمر",
          textAlign: TextAlign.center,
          softWrap: true,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 80,
          height: 60,
          child: RaisedButton(
            focusColor: Colors.orange,
            color: Colors.blue,
            hoverColor: Colors.orange,
            onPressed: () {},
            child: Center(
                child: Text(
              "اقراء اكثر",
              style: TextStyle(color: Colors.white),
            )),
          ),
        )
      ],
    );
  }
}
