import 'package:flutter/material.dart';
import 'package:flutter_lyawei/FlexWidgetPage.dart';
import 'package:flutter_lyawei/RowColumnWidgetPage.dart';
import 'package:flutter_lyawei/StackWidgetPage.dart';
import 'package:flutter_lyawei/WrapWidgetPage.dart';

class LayoutWidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('布局类控件'),
      ),
      body: (Column(
        children: <Widget>[
          FlatButton(
            child: Text("线性布局"),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new RowColumnWidgetPage();
              }));
            },
          ),
          FlatButton(
            child: Text("弹性布局"),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new FlexWidgetPage();
              }));
            },
          ),
          FlatButton(
            child: Text("流式布局"),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new WrapWidgetPage();
              }));
            },
          ),
          FlatButton(
            child: Text("层叠布局"),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new StackWidgetPage();
              }));
            },
          )
        ],
      )),
    );
  }
}
