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
          ),
          FlatButton(
            child: Text('FlatButton'),
            onPressed: () {
              print('FlatButton');
            },
          ),
          OutlineButton(
            child: Text('OutlineButton'),
            onPressed: () {
              print('OutlineButton');
            },
          ),
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {
              print('IconButton');
            },
          ),
          FlatButton(
            child: Text('自定义按钮Style'),
            //字体颜色
            color: Colors.blue,
            //按下的颜色
            highlightColor: Colors.blue[700],
            //按钮主题色
            colorBrightness: Brightness.dark,
            //按下去的颜色
            splashColor: Colors.grey,
            //背景shape
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {},
          )
        ],
      )),
    );
  }
}
