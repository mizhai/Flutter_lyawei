import 'package:flutter/material.dart';
import 'package:flutter_lyawei/ButtonWidgetPage.dart';
import 'package:flutter_lyawei/ImageWidgetPage.dart';
import 'package:flutter_lyawei/TextWidgetPage.dart';

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
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new ButtonWidgetPage();
              }));
            },
          ),
          RaisedButton(
            child: Text('图片组件'),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new ImageWidgetPage();
              }));
            },
          )
        ],
      )),
    );
  }
}
