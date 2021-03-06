

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_en/widget/buttontophome.dart';

class StationEN extends StatefulWidget {
  @override
  _StationENState createState() => _StationENState();
}

class _StationENState extends State<StationEN> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(color: Colors.white
              // gradient: KBackgroundGradient,
              ),
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  color: Colors.transparent,
                  height: 80,
                  child: ListView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ButtontopHomeEn(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    "OUR STATIONS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Center(
                  child: Text(
                    "All plans come with unlimited disk space. Our support can be as quick as 15 minutes to get a response. Sed non\nmauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu.",
                   textAlign: TextAlign.center,
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
                          child: ImgCard("STATION", "assets/img/backimg.jpg",),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImgCard("STATION", "assets/img/img1.jpg",),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImgCard("STATION", "assets/img/img2.jpg",),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImgCard("STATION", "assets/img/img3.jpg",),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImgCard("PARKING SPACES", "assets/img/img4.jpg",),
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

  void _modalBottomSheetMenu1() {
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return new Container(
            height: 380.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: new Container(
                decoration: new BoxDecoration(

                    color: Colors.black,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
                child:  Center(
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Text("Station",style: TextStyle(color: Colors.white),),
                        Image.asset("assets/img/img3.jpg",fit: BoxFit.cover,height: 200,width: 300,),


                      ],
                    ),
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
          image: ExactAssetImage(widget.img,),
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
                onPressed: (){_modalBottomSheetMenu1();},
                padding: EdgeInsets.all(0.0),
                child: Text(widget.text))));
  }
}
