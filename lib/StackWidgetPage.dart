import 'package:flutter/material.dart';

class StackWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('层叠布局')),
      body: (ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Text('hello'),
            Positioned(
              left: 20.0,
              child: Text('a'),
            ),
            Positioned(
              top: 20.0,
              child: Text('a'),
            ),
            Positioned(
              right: 20.0,
              child: Text('a'),
            ),
            Positioned(
              bottom: 20.0,
              child: Text('a'),
            )
          ],
        ),
      )),
    );
  }
}
