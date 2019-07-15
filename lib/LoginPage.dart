import 'package:flutter/material.dart';
import 'package:flutter_app_login/HomePage.dart';

class LoginPage extends StatefulWidget {
//  LoginPage({Key key, this.title}) : super(key: key);

//  final String title;

  @override
   State<StatefulWidget> createState() => _LoginState();
}


class _LoginState extends State <LoginPage> {

  _pushToHomePage() {
    Navigator.push(context, new MaterialPageRoute(builder: (context)=> new HomePage()));
  }

  @override
  Widget build(BuildContext context) {
//    Color color = Theme.of(context).primaryColor;
    final size = MediaQuery.of(context).size;
    final width = size.width;
//    final height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("登录login"),
      ),
      body: Container(
        padding:new EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
        color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container (
                  padding: EdgeInsets.only(bottom: 10.0),
                  height: 80,
                  color: Colors.blue[400],
                  child:_inputItem(Icons.supervisor_account,'账号:')
              ),
              Container (
                  padding: EdgeInsets.only(top: 20.0),
                  height: 90,
                  color: Colors.orange,
                  child:_inputItem(Icons.https,'密码:')
              ),
              Container (
                  padding: EdgeInsets.fromLTRB(20, 80, 20, 30),
                    width: width - 20 *2,
//                  child: new Container(
                    color: Colors.brown[300],
                    child: new RaisedButton (
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(width: 1,color: Colors.blueGrey),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      color: Colors.white,
                      splashColor: Colors.green,
                      onPressed: _pushToHomePage,
                      child: Text("登 录",
                        style: new TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
//                  ),
              ),
            ],
          ),
      ),
    );
  }

  Widget _inputItem(IconData icon, String label) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
        new Icon(icon, color: Colors.white),
        new Container (
          padding: EdgeInsets.only(left: 10.0),
          width: 60,
          child: new Text(label,
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
        new ConstrainedBox (
          constraints: BoxConstraints(
            maxWidth: 250,
          ),
          child: new TextField(
          ),
        ),
      ],
    );
  }
}