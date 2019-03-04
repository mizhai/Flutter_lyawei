import 'package:flutter/material.dart';

class ImageWidgetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ImageWidgetState();
  }
}

class _ImageWidgetState extends State<ImageWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('图片组件用法'),
      ),
      body: (Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text('本地图片1'),
                Image(
                  image: AssetImage('assets/images/pozhu_icon.png'),
                  width: 100.0,
                ),
                Text('本地图片2'),
                Image.asset(
                  'assets/images/pozhu_icon.png',
                  width: 100.0,
                ),
                Text('网络图片1'),
                Image(
                  image: NetworkImage(
                      'http://cdna.pozhu.com/icons/2019227GQbjXOyWZzuril9.jpg-liebiaosuoluetu'),
                  width: 100.0,
                ),
                Text('网络图片2'),
                Image.network(
                    'http://cdna.pozhu.com/icons/2019227GQbjXOyWZzuril9.jpg-liebiaosuoluetu',
                    width: 100.0),
                Text('图片相关参数设置'),
                Image.network(
                  'http://cdna.pozhu.com/icons/2019227GQbjXOyWZzuril9.jpg-liebiaosuoluetu',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.fitHeight,
                  color: Colors.yellow,
                  colorBlendMode: BlendMode.color,
                ),
                Text('自带material icon用法'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.android,
                      color: Colors.blue,
                    )
                  ],
                ),
                Text('自定义 icon用法'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      IconData(0xe73d,
                          fontFamily: 'myicon', matchTextDirection: true),
                      color: Colors.red,
                    ),
                    Icon(
                      IconData(0xe740,
                          fontFamily: 'myicon', matchTextDirection: true),
                      color: Colors.red,
                    ),
                    Icon(
                      IconData(0xe742,
                          fontFamily: 'myicon', matchTextDirection: true),
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
