import 'package:flutter/material.dart';

class QuestionTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuestionTabPage();
  }
}

class _QuestionTabPage extends State<QuestionTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('问答', style: TextStyle(color: Colors.black)),
    );
  }
}
