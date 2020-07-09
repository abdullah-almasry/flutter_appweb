import 'package:flutter/material.dart';
import 'package:flutterappweb/widget/buttontophome.dart';
import 'package:flutterappweb/widget/constans.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Service extends StatefulWidget {

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {

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
        decoration: BoxDecoration(
          gradient: KBackgroundGradient,
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "خدمتنا",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "نتمتع بسمعة جيدة في تقديم مشاريع استثنائية من كل حجم ونطاق بشكل متكرر تقديم الخدمات لجميع مراحل المشروع ، ونحن متخصصون في النفط والغاز والبنية التحتية ، والتي ، جنبا إلى جنب مع البناء العام ، تشكل أعمالنا الأساسية.",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white),
              textAlign: TextAlign.center,
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
                height: size.height * 0.80,
                width: 100,
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
                    Text("ادارة و تشغيل محطات الوقود" ,
                    style: TextStyle(color: Colors.black,fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("تتمثل انشطة شركة الوقود و الطاقة طبقا لسجلها التجاري في بيع المحروقات , و الزيوت, و قطع غيار السيارات ,و اطارتها ,و البطاريات, و بيع التجزئة في المواد الغذائية, و الماكولات الخفيفة , بالاضافة الى قسم النقليات للمواد البترولية و تهدف الشركة لتكون الاولى في تقديم خدمة مميزة مع التطوير و التحديث الدائم لجميع اقسامها" ,
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
                    Text("قطاع النقل في شركة الوقود و الطاقة" ,
                      style: TextStyle(color: Colors.black,fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("يسعى لاحتلال مركز الصدارة على كل المنافسين. اسطولنا المميز الذي يتكون من عدد كبير من الشاحنات والمقطورات من أفخم الطرازات العالمية والتي تجوب المملكة العربية السعودية نسعى دائماً للتكامل في خدماتنا وتقديم أفضل الخدمات نتميز بالامانة و المهنية و الالتزام والدقة في المواعيد ونحن على يقين أن رضاء عملائنا هو سبب استمرارنا وتطورنا." ,
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
