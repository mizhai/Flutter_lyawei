import 'package:flutter/material.dart';

class TextWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('text组件应用'),
      ),
      body: (new Column(
        children: <Widget>[
          Text(
            '基础用法',
            textAlign: TextAlign.start,
          ),
          Text(
            '设置TextStyle',
            textAlign: TextAlign.start,
            style: (TextStyle(
                color: Colors.white,
                //字体颜色
                fontSize: 18.0,
                //字体大小
                height: 1.2,
                //行高
                fontFamily: 'Courier',
                //字体
                decoration: TextDecoration.underline,
                //下划线
                decorationStyle: TextDecorationStyle.dashed,
                //虚线
                background: new Paint()..color = Colors.blue)),
            //背景颜色
          ),
          Text(
            '设置字体大小为1.5',
            textScaleFactor: 1.5,
          ),
          Text(
            '限制行数' * 10,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '居中对齐' * 10,
            textAlign: TextAlign.center,
          ),
          Text(
            '居左对齐' * 10,
            textAlign: TextAlign.start,
          ),
          Text(
            '局右对齐' * 10,
            textAlign: TextAlign.end,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: '(TextSpan用法)破竹:'),
            TextSpan(
                text: 'https://www.pozhu.com',
                style: TextStyle(color: Colors.blue))
          ])),
          DefaultTextStyle(
            //文本样式继承
            style: TextStyle(
              color: Colors.red,
              fontSize: 18.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              children: <Widget>[
                Text('默认继承1'),
                Text('默认继承2'),
                Text(
                  '不继承',
                  style: TextStyle(inherit: false, color: Colors.black),
                )
              ],
            ),
          ),
          Text('hello', style: TextStyle(fontFamily: '自定义字体', fontSize: 24.0)),
          Text(
            '自定义中文字体',
            style: TextStyle(fontFamily: '安娜一号中文', fontSize: 24.0),
          )
        ],
      )),
    );
  }
}
