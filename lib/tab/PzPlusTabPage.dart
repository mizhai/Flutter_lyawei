import 'package:flutter/material.dart';

class PzPlusTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PzPlusTabPage();
  }
}

class _PzPlusTabPage extends State<PzPlusTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('破竹号', style: TextStyle(color: Colors.black)),
    );
  }
}
