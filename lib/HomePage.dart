import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: AppBar(
        title: Text("首页"),
      ),
        body: new Center(
          child: new Text("Wecome to Flutter World"),
      ),
    );
  }
}