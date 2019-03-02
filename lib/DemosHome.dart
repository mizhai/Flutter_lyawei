import 'package:flutter/material.dart';
import 'package:flutter_lyawei/BaseWidgetPage.dart';

class DemosHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: (AppBar(
          title: Text('FlutterDemo合集'),
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              child: Text('基础组件'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new BaseWidgetpage();
                }));
              },
            )
          ],
        ));
  }
}
