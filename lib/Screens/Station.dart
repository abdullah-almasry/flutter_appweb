

import 'package:flutter/material.dart';
import 'package:flutterappweb/widget/buttontophome.dart';
import 'package:flutterappweb/widget/constans.dart';

class Station extends StatefulWidget {
  @override
  _StationState createState() => _StationState();
}

class _StationState extends State<Station> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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
                          child: ImgCard("aya", "assets/img/backimg.jpg",),
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

}

class ImgCard extends StatefulWidget {
  final String text;
  final String img;



  ImgCard(this.text, this.img,);

  @override
  _ImgCardState createState() => _ImgCardState();
}

class _ImgCardState extends State<ImgCard> {
  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return new Container(
            height: 350.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: new Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
                child:  Center(
                  child:  Row(
                    children: <Widget>[
                      Text("This is a modal sheet"),
                      Image.asset("")
                    ],
                  ),
                )),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: ExactAssetImage(widget.img),
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
                onPressed:(){_modalBottomSheetMenu();},
                padding: EdgeInsets.all(0.0),
                child: Text(widget.text))));
  }
}
