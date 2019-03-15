import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeTabPage();
  }
}

class _HomeTabPage extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoApp(
        home: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: Icon(CupertinoIcons.back),
              middle: Text('首页'),
              trailing: Icon(CupertinoIcons.share),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text('iOS风格首页', style: TextStyle(color: Colors.black)),
            )),
      ),
    );
  }
}
