import 'package:flutter/material.dart';
import 'package:flutter_lyawei/ListViewWidgetPage.dart';

class ScrollWidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('滚动类Widgets'),
      ),
      body: (Column(
        children: <Widget>[
          FlatButton(
            child: Text('ListView使用'),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new ListViewWidgetPage();
              }));
            },
          )
        ],
      )),
    );
  }
}
