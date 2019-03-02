import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Button用法'),
      ),
      body: (new Column(
        children: <Widget>[
          RaisedButton(
            child: Text('RaisedButton'),
            onPressed: () {
              print("点击");
//              Fluttertoast.showToast(
//                  msg: 'RaisedButton',
//                  toastLength: Toast.LENGTH_LONG,
//                  gravity: ToastGravity.CENTER,
//                  timeInSecForIos: 1,
//                  backgroundColor: Colors.red,
//                  textColor: Colors.white,
//                  fontSize: 16.0);
            },
          )
        ],
      )),
    );
  }
}
