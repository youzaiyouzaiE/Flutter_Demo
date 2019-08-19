import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {


  State<StatefulWidget> createState() {
    return new HomeState();
  }
}


class HomeState extends State <HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: AppBar(
        title: Text("首页"),
      ),
    );
  }

}