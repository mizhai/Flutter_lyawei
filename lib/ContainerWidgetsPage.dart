import 'package:flutter/material.dart';
import 'package:flutter_lyawei/ConstrainerWidgetPage.dart';
import 'package:flutter_lyawei/DecoratedBoxWidgetPage.dart';
import 'package:flutter_lyawei/TransformWidgetPage.dart';

class ContainerWidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('容器类Widgets'),
      ),
      body: (Column(
        children: <Widget>[
          FlatButton(
            child: Text('限制类型容器'),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new ConstrainerWidgetPage();
              }));
            },
          ),
          FlatButton(
            child: Text('装饰类型容器'),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new DecoratedBoxWidgetPage();
              }));
            },
          ),
          FlatButton(
            child: Text('Transform变换'),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new TransformWidgetPage();
              }));
            },
          )
        ],
      )),
    );
  }
}
