import 'package:flutter/material.dart';

class RowColumnWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('线性布局控件的使用'),
      ),
      body: (Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text('占据最大宽度,子控件从左到右排列居中对齐'),
                Container(
                  color: Colors.red,
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('a'),
                      Text('b'),
                      Text('c'),
                    ],
                  ),
                ),
                Text('占据最大宽度,子控件从右到左排列居右对齐'),
                Container(
                  color: Colors.red,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('a'),
                      Text('b'),
                      Text('c'),
                    ],
                  ),
                ),
                Text('MainAxisSize.min时MainAxisAlignment无意义'),
                Container(
                  color: Colors.red,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('a'),
                      Text('b'),
                      Text('c'),
                    ],
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  child: Column(
                    children: <Widget>[
                      Text('a'),
                      Text('b'),
                      Text('c'),
                      Text('MainAxisSize.max无效'),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.cyan,
                    child: Column(
                      children: <Widget>[
                        Text('a'),
                        Text('b'),
                        Text('c'),
                        Text('内部占据其余全部空间'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
