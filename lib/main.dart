import 'package:flutter/material.dart';
import 'package:flutter_application_1/imagePickers.dart';
import 'package:flutter_application_1/appBar.dart';
import 'package:flutter_application_1/gridWidget.dart';
import 'package:flutter_application_1/signUpPage_3.dart';
import 'package:flutter_application_1/signUp_Page.dart';
import 'package:flutter_application_1/signUp_page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: mysignup_page(),

      routes: {},

    );
  }
}

