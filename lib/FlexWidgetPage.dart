import 'package:flutter/material.dart';

class FlexWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('弹性布局')),
      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.vertical,
            children: <Widget>[
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      height: 100.0,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      height: 100.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 100.0,
                  child: Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
//                          height: 30.0,
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
//                          height: 30.0,
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
//                          height: 30.0,
                          color: Colors.yellow,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
