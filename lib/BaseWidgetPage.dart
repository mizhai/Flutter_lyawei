import 'package:flutter/material.dart';
import 'package:flutter_lyawei/ButtonWidgetPage.dart';
import 'package:flutter_lyawei/TextWidgetPage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BaseWidgetpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: (AppBar(
        title: Text('flutter基础组件'),
      )),
      body: (Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            child: Text('Text组件'),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new TextWidgetPage();
              }));
            },
          ),
          RaisedButton(
            child: Text('Button组件'),
            onPressed: () {
//              Fluttertoast.showToast(
//                  msg: 'RaisedButton',
//                  toastLength: Toast.LENGTH_LONG,
//                  gravity: ToastGravity.CENTER,
//                  timeInSecForIos: 1,
//                  backgroundColor: Colors.red,
//                  textColor: Colors.white,
//                  fontSize: 16.0);
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new ButtonWidgetPage();
              }));
            },
          )
        ],
      )),
    );
  }
}
