import 'package:flutter/material.dart';
import 'package:flutter_lyawei/tab/HomeTabPage.dart';
import 'package:flutter_lyawei/tab/MyTabPage.dart';
import 'package:flutter_lyawei/tab/PzPlusTabPage.dart';
import 'package:flutter_lyawei/tab/QuestionTabPage.dart';

class PozhuHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PozhuHomePageState();
  }
}

class _PozhuHomePageState extends State<PozhuHomePage> {
  var _selectedIndex = 0;
  final _widgetOptions = [
    HomeTabPage(),
    PzPlusTabPage(),
    QuestionTabPage(),
    MyTabPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('破竹'),
//      ),
      body: (Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard), title: Text('破竹号')),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), title: Text('问答')),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_location), title: Text('我的')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.orange,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
