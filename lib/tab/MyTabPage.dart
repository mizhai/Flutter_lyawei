import 'package:flutter/material.dart';

class MyTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyTabPageState();
  }
}

class _MyTabPageState extends State<MyTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('个人中心', style: TextStyle(color: Colors.black)),
    );
  }
}
