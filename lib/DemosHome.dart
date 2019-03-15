import 'package:flutter/material.dart';
import 'package:flutter_lyawei/AnimationPage.dart';
import 'package:flutter_lyawei/BaseWidgetPage.dart';
import 'package:flutter_lyawei/ContainerWidgetsPage.dart';
import 'package:flutter_lyawei/CustomWidgetPage.dart';
import 'package:flutter_lyawei/DataModelPage.dart';
import 'package:flutter_lyawei/EventAndNotifyPage.dart';
import 'package:flutter_lyawei/FunctionWidgetsPage.dart';
import 'package:flutter_lyawei/LayoutWidgetsPage.dart';
import 'package:flutter_lyawei/PozhuHomePage.dart';
import 'package:flutter_lyawei/ScrollWidgetsPage.dart';

class DemosHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: (AppBar(
          title: Text('FlutterDemo合集'),
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              child: Text('基础Widgets'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new BaseWidgetpage();
                }));
              },
            ),
            FlatButton(
              child: Text('布局类Widgets'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new LayoutWidgetsPage();
                }));
              },
            ),
            FlatButton(
              child: Text('容器类Widgets'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new ContainerWidgetsPage();
                }));
              },
            ),
            FlatButton(
              child: Text('可滚动Widgets'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new ScrollWidgetsPage();
                }));
              },
            ),
            FlatButton(
              child: Text('功能型Widgets'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new FunctionWidgetsPage();
                }));
              },
            ),
            FlatButton(
              child: Text('事件处理与通知'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new EventAndNotifyPage();
                }));
              },
            ),
            FlatButton(
              child: Text('动画'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new AnimationPage();
                }));
              },
            ),
            FlatButton(
              child: Text('自定义Widget'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new CustomWidgetPage();
                }));
              },
            ),
            FlatButton(
              child: Text('文件操作与网络请求'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return DataModelPage();
                }));
              },
            ),
            FlatButton(
              child: Text('综合案例'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return PozhuHomePage();
                }));
              },
            )
          ],
        ));
  }
}
