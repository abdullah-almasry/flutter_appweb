import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_ar/widget/buttontophome.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: ListView(
        children: [
          Container(
            height: 80,
            child: ListView(reverse: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ButtontopHome(),
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
                "عن الشركة",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black),
              ),
              Text(
                "تهدف الشركة إلى تحقيق أفضل عائد اقتصادي ، وتقديم أفضل الخدمات لعملائها من خلال التطوير المستمر ورفع كفاءة مواردها البشرية حيث يتم الإشراف على العمليات من قبل موظفين مدربين من المهندسين والفنيين والقوى العاملة ، مما يضمن \nالسلامة من الموظفين والخدمات للجمهور والمعدات",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),
                textAlign: TextAlign.center,
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
                    "لماذا الوقود والطاقه؟",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "الوقود والطاقه موجوده لمساعدتك فى مشاريعك",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                      ". توظيف الأفراد المهرة والاحتفاظ بهم ، وتوفير بيئة عمل مواتية للأداء العالي ، وتحفيز ودعم تطوير القيادة والقدرات التقنية\n. تحسين مستوى الأداء المؤسسي داخل جميع أقسام المحطة\n. إعداد القادة والكوادر المتخصصة\n. توفير خدمة عملاء متميزة\n. حماية وتطوير الاستثمارات ، من خلال تطوير قدرات ومهارات السلامة المهنية \n",

                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    textDirection: TextDirection.rtl,
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
