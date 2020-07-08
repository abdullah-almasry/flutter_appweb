

import 'package:flutter/material.dart';
import 'package:flutterappweb/widget/buttontophome.dart';
import 'package:flutterappweb/widget/constans.dart';

class Station extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 2,
          actions: <Widget>[
            ButtontopHome(),
          ],
        ),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(color: Colors.white
              // gradient: KBackgroundGradient,
              ),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    "محطتنا",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.black),
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                height: 2,
                width: size.width * 0.20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50),
                child: Container(
                    height: size.height * 0.80,
                    width: size.width * 0.70,
                    child: GridView.extent(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(20),
                      maxCrossAxisExtent: 400,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImgCard("aya", "assets/img/backimg.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImgCard("aya", "assets/img/img1.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImgCard("aya", "assets/img/img2.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImgCard("aya", "assets/img/img3.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImgCard("aya", "assets/img/img4.jpg"),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ));
  }

  Widget AddEntryDialog() {
    return AlertDialog(
      title: Text("hggi h;fv"),
      scrollable: true,
    );
  }
}

class ImgCard extends StatelessWidget {
  final String text;
  final String img;

  ImgCard(this.text, this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: ExactAssetImage(img),
          fit: BoxFit.fill,
        )),
        child: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: FlatButton(
              focusNode: FocusNode(
                debugLabel: "abdulah",
                canRequestFocus: true,
                skipTraversal:true ,
              ),
                hoverColor: Colors.black.withOpacity(0.3),
                focusColor: Colors.black,
                onPressed: () {},
                padding: EdgeInsets.all(0.0),
                child: Text(text))));
  }
}
