import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lyawei/bean/HouseListBean.dart';

class PzPlusTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PzPlusTabPage();
  }
}

class _PzPlusTabPage extends State<PzPlusTabPage> {
  List<DataListBean> houses;
  Dio dio;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    dio = new Dio();
    dio.options.baseUrl = 'https://newapi.mizhai.com/SDK/';
    dio.options.connectTimeout = 5000; //5s
    dio.options.receiveTimeout = 3000;
//    getData1();
    getData2();
  }

  void getData2() async {
    Response response = await dio.post('LoupanSaiXuan.html', queryParameters: {
      "siteID": 1,
      "typeid": 0,
      "areaid": 0,
      "priceid": 0,
      "tagid": 0,
      "hide": 0,
      "sort": 0,
      "keyword": "",
      "mapX": 0,
      "mapY": 0,
      "juli": 0,
      "p": 0,
      "streetid": 0,
      "tj": 0,
    });
    setState(() {
      var decode = json.decode(response.toString());
      var houseListBean = HouseListBean.fromJson(decode);
      print(houseListBean.data[1].name);
      houses = houseListBean.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView.builder(
          itemCount: houses == null ? 0 : houses.length,
          itemExtent: 50.0, //强制高度为50.0
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text(houses[index].name));
          }),
    );
  }
}
