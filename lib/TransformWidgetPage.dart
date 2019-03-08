import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform变换'),
      ),
      body: (Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.4),
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.orange,
              child: Text('hello flutter'),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: (Transform.translate(
              offset: Offset(-10.0, -4.0),
              child: Text('hi'),
            )),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: (Transform.rotate(
              angle: math.pi / 2,
              child: Text('hello'),
            )),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.blue),
            child: (Transform.scale(
              scale: 1.6,
              child: Text('hello'),
            )),
          ),
          Text('Transform与DecoratedBox的区别'),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.blue),
            child: (RotatedBox(
              quarterTurns: 1, //旋转90度(1/4圈)
              child: Text('hello'),
            )),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.blue),
              child: (Transform.rotate(
                angle: math.pi / 2,
                child: Text('hello'),
              )),
            ),
          ),
          Text('margin和padding的应用'),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('hello'),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('hello'),
            ),
          )
        ],
      )),
    );
  }
}
