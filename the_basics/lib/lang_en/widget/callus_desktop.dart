import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_en/widget/buttontophome.dart';
import 'package:flutterappweb/lang_en/widget/constans.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CallUsDesktopEN extends StatefulWidget {

  @override
  _CallUsDesktopENState createState() => _CallUsDesktopENState();
}

class _CallUsDesktopENState extends State<CallUsDesktopEN> {
  TextEditingController _textController= TextEditingController();
  TextEditingController _textController1= TextEditingController();
  TextEditingController _textController2= TextEditingController();
  TextEditingController _textController3= TextEditingController();

  String title='';
  String email='';
  String name='';
  String description='';


  void createRecord() async {
    final databaseReference = Firestore.instance;



    DocumentReference ref = await databaseReference.collection("email").add({
      'name':name,
      'title': title,
      'emil':email,
      'description': description,
    });
    print(ref.documentID);
  }
  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return new Container(
            height: 100.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: new Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
                child:  Center(
                  child:  Text("تم الارسال بنجاح"),
                )),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          ButtontopHomeEn(),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: size.height * 0.30,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "CONTACT USا",
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
                  "Dear Customer Don't Hesitate to contact us , if you have any inquiries about transporting",
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
              ],
            ),
            decoration: BoxDecoration(
              gradient: KBackgroundGradient,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: KBackgroundGradient,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        height: size.height * .070,
                        width: size.width * .40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _textController,

                            onChanged: (value){
                              setState(() {
                                name=value;
                              });
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "NAME"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        height: size.height * .070,
                        width: size.width * .40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _textController,

                            onChanged: (value){
                              setState(() {
                                email=value;
                              });
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "EMAIL"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        height: size.height * .070,
                        width: size.width * .40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _textController,

                            onChanged: (value){
                              setState(() {
                                title=value;
                              });
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "TITLE"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        height: size.height * .30,
                        width: size.width * .40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _textController,

                            onChanged: (value){
                              setState(() {
                                description=value;
                              });
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "MESSAGE"),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 550,
                      child: RaisedButton(

                        focusColor: Colors.orange,
                        color: Colors.orange,
                        hoverColor: Colors.black,
                        onPressed: () {
                          createRecord();
                          _textController.clear();
                          _textController1.clear();
                          _textController2.clear();
                          _textController3.clear();


                          _modalBottomSheetMenu();},
                        child: Center(
                            child: Text(
                              "SEND",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "GET IN TOUCH !",
                      style: TextStyle(fontSize: 34, color: Colors.orange),
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.map,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                          height: 40,
                        ),
                        Text(
                          "Kingdom of saudi arabia,Riyadh,",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.call,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "(+966) 508357661 :Riyadh \n (+966) 557583689 :Hafr Albaten \n(+966) 508962471 :Al-Qasiem",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.mail,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "sales@fuelenergyco.com",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(FontAwesomeIcons.googlePlusSquare,color: Colors.red,),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(FontAwesomeIcons.twitterSquare,color: Colors.teal,),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(FontAwesomeIcons.facebookSquare,color: Colors.blue,),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
