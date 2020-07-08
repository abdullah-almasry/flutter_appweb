import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/widget/buttontophome.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class model {
  final String string1;

  model(this.string1);
}

class _HomeState extends State<Home> {
  Color colorwhITE = Colors.yellowAccent;
  bool isSelcted = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(

        children: [
          Image.asset("assets/img/backimg.jpg",fit: BoxFit.fill,width: size.width,height: size.height,),
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(1, 2), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/img/logo.png",
                                fit: BoxFit.fill,
                                height: 100,
                                width: 100,
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
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 26,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "تهدف الشركة إلى تحقيق أفضل عائد اقتصادي\nورفع كفاءة مواردها البشرية ورفع كفاءة مواردها البشرية\nوتقديم أفضل الخدمات لعملائها من خلال التطوير المستمر",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 26,
                                  color: Colors.white,

                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              RaisedButton(
                                focusColor: Colors.orange,
                                color: Colors.blue,
                                hoverColor: Colors.orange,
                                onPressed: () {},
                                child: Center(
                                    child: Text(
                                      "اقراء اكثر",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                        ),
                        child: ButtontopHome(),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          height: 420.0,
                          width: 500.0,
                          child: Carousel(
                            boxFit: BoxFit.contain,
                            autoplay: true,
                            animationCurve: Curves.fastOutSlowIn,
                            animationDuration: Duration(milliseconds: 1000),
                            dotSize: 6.0,
                            dotIncreasedColor: Color(0xFFFF335C),
                            dotBgColor: Colors.transparent,
                            dotPosition: DotPosition.topRight,
                            dotVerticalPadding: 10.0,
                            showIndicator: false,
                            indicatorBgPadding: 7.0,
                            images: [
                              Carditem("assets/img/img1.jpg", "الضمان والامان"),
                              Carditem("assets/img/img2.jpg", "نقل الوقود"),
                              Carditem("assets/img/img3.jpg", "الضمان والامان"),
                              Carditem("assets/img/img4.jpg", "نقل الوقود"),
                              Carditem("assets/img/img5.jpg", "الضمان والامان"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Carditem extends StatelessWidget {
  final String img;
  final String text;

  Carditem(this.img, this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Stack(
          children: [
            Image.asset(
              img,
              fit: BoxFit.fitHeight,
              height: double.infinity,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 43,
                width: double.infinity,
                color: Colors.black.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text(
                    text,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}