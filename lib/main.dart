import 'package:flutter/material.dart';
import 'package:flutter_app_login/LoginPage.dart';
import 'package:flutter_app_login/TabBarPag.dart';


void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
