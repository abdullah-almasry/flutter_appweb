import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_ar/widget/constans.dart';
import 'package:flutterappweb/lang_en/widget/text_home_page.dart';


class Logo_TextEN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: KBackgroundGradient2,
      ),
      child: Container(
        child: Column(

          children: <Widget>[
            Center(
              child: Image.asset(
                "assets/img/logo.png",
                fit: BoxFit.fill,
                height: 100,
                width: 100,
              ),
            ),
            Text.rich(TextSpan(
                text: "شركة الوقود و",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: 'الطاقة\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Fuel And',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Energy',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Co.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ])),
            Text_Home_PageEn()
          ],
        ),
      ),
    );
  }
}
