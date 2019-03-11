import 'package:flutter/material.dart';

class ListViewWidgetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListViewWidgetPageState();
  }
}

class _ListViewWidgetPageState extends State<ListViewWidgetPage> {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    var split = str.split('');
    var widgets = split
        .map((c) => Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                  ),
                  child: Text(c),
                ),
              ),
            ))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView的使用'),
      ),
      body: (Container(
        child: Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: widgets,
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: widgets,
              ),
            )
          ],
        ),
      )),
    );
  }
}
