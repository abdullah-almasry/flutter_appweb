import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_ar/widget/callUs_Mobile.dart';
import 'package:flutterappweb/lang_ar/widget/callus_desktop.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallUs extends StatefulWidget {

  @override
  _CallUsState createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: ScreenTypeLayout(
        desktop: CallUsDesktop(),
        mobile: CallUsMobile(),
      ));
  }
}
