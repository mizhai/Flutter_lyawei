import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _CheckBoxPageStatus();
  }
}

class _CheckBoxPageStatus extends State<CheckBoxPage> {
  bool _SwitchChecked = true;
  bool _CheckBoxChecked = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('单选,开关,复选'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Switch(
            value: _SwitchChecked,
            onChanged: (value) {
              setState(() {
                _SwitchChecked = value;
              });
            },
          ),
          Checkbox(
            value: _CheckBoxChecked,
            onChanged: (value) {
              setState(() {
                _CheckBoxChecked = value;
              });
            },
          )
        ],
      ),
    );
  }
}
