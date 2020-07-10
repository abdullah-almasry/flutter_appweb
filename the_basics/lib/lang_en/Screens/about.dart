import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_en/widget/buttontophome.dart';

class AboutEN extends StatefulWidget {
  @override
  _AboutENState createState() => _AboutENState();
}

class _AboutENState extends State<AboutEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: ListView(
        children: [
          Container(
            height: 80,
            child: ListView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ButtontopHomeEn(),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "ABOUT US",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "The company aims to achieve the best economic return, and to provide the best services to its customers through continuous development and raise the efficiency of its human resources where the operations are supervised by a trained staff of engineers, technicians and manpower, which ensures the safety of employees and services to the public and equipment.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.orange,
                height: 2,
                width: 250,
              ),
              SizedBox(
                height: 60,
              ),
              Image.asset("assets/img/about-img1.jpg"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "WHY FUEL AND ENERGY?!!؟",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "اFUEL AND ENERGY IS HERE TO HELP WITH YOUR PROJECTS",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "- Providing outstanding customer service. \n- Protect and develop investments, through the development of professional safety capabilities and skills. \n- Preparation of leaders and specialized cadres. \n- Improving the level of institutional performance within all sections of the station. \n- Recruit and retain skilled personnel, provide a work environment conducive to high performance, \nand stimulate and support the development of leadership and technical capabilities",

                      textAlign: TextAlign.end,

                      softWrap: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
