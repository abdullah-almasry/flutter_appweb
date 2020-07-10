import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappweb/lang_en/widget/callUs_Mobile.dart';
import 'package:flutterappweb/lang_en/widget/callus_desktop.dart';

import 'package:responsive_builder/responsive_builder.dart';

class CallUsEN extends StatefulWidget {

  @override
  _CallUsENState createState() => _CallUsENState();
}

class _CallUsENState extends State<CallUsEN> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: ScreenTypeLayout(
        desktop: CallUsDesktopEN(),
        mobile: CallUsMobileEN(),
      ));
  }
}
