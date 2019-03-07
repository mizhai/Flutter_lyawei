import 'package:flutter/material.dart';

class WrapWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: (Wrap(
        spacing: 4.0, // 主轴(水平)方向间距
        runSpacing: 8.0, // 纵轴（垂直）方向间距
        children: <Widget>[
          Container(
            color: Colors.yellow,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            color: Colors.yellow,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            color: Colors.yellow,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            color: Colors.yellow,
            width: 100.0,
            height: 100.0,
          )
        ],
      )),
    );
  }
}
