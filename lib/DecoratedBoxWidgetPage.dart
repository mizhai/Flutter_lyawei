import 'package:flutter/material.dart';

class DecoratedBoxWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('装饰容器'),
      ),
      body: (Container(
        child: Column(
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0)
                  ]),
              child: (Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('hello flutter'),
              )),
            )
          ],
        ),
      )),
    );
  }
}
