import 'package:flutter/material.dart';

class ConstrainerWidgetPage extends StatelessWidget {
  Widget widget = DecoratedBox(decoration: BoxDecoration(color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('限制类容器的使用'),
      ),
      body: (Column(
        children: <Widget>[
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 50.0),
            child: widget,
          ),
          SizedBox(
            child: widget,
            width: 20.0,
            height: 20.0,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0, minHeight: 60.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
              child: widget,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0, minHeight: 60.0),
            //去除父布局限制
            child: UnconstrainedBox(
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                child: widget,
              ),
            ),
          )
        ],
      )),
    );
  }
}
