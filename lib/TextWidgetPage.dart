import 'package:flutter/material.dart';

class TextWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('text组件应用'),
      ),
      body: (new Column(
        children: <Widget>[
          Text(
            '基础用法',
            textAlign: TextAlign.start,
          ),
          Text(
            '设置TextStyle',
            textAlign: TextAlign.start,
            style: (TextStyle(
                color: Colors.white,
                background: new Paint()..color = Colors.blue)),
          ),
          Text(
            '设置字体大小为1.5',
            textScaleFactor: 1.5,
          )
        ],
      )),
    );
  }
}
