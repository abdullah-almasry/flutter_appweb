import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_en/widget/buttontophome.dart';
import 'package:flutterappweb/lang_en/widget/constans.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceEN extends StatefulWidget {

  @override
  _ServiceENState createState() => _ServiceENState();
}

class _ServiceENState extends State<ServiceEN> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: KBackgroundGradient,
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
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
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "OUR SERVICES",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Fuel And Energy Co. Contracting Co. has a well-earned reputation for repeatedly delivering exceptional projects of every size and scope. Providing services for all phases of a project, we specialize in Oil & Gas and Infrastructure, which, alongside General Construction, constitute our core business.",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.orange,
              height: 2,
              width: size.width * 0.10,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                height: size.height*1.2,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 40),
                      child: FaIcon(
                        FontAwesomeIcons.flask,
                        color: Colors.black,
                        size: 50,
                      ),
                    ),
                    Text("Fuel station management and operation sector" ,
                    style: TextStyle(color: Colors.black,fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("The activities of the fuel and energy company are according to its commercial record in the sale of hydrocarbons, oils, spare parts, tires, batteries, retail sale of foodstuffs, light food, The company aims to be the first to provide a distinctive service with the development and constant modernization of all its sections" ,
                        textAlign: TextAlign.center,

                        style: TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 40),
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                        size: 50,
                      ),
                    ),
                    Text("Transportation sector in the fuel and energy company" ,
                      style: TextStyle(color: Colors.black,fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Seeks to take the lead on all competitors. Our fleet, which consists of a large number of trucks and trailers of the most prestigious models that are roaming the Kingdom of Saudi Arabia, we always strive to integrate our services and provide the best services We are characterized by honesty, professionalism, commitment and punctuality and we are sure that the satisfaction of our customers is the reason for our continued development." ,
                        textAlign: TextAlign.center,

                        style: TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
