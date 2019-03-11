import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_lyawei/bean/HousesBean.dart';

class DataModelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DataModelPage();
  }
}

class _DataModelPage extends State<DataModelPage> {
  String _responsenData = "";

  String url =
      "https://newapi.mizhai.com/SDK/LoupanSaiXuan.html?siteID=1&typeid=0&areaid=0&priceid=0&tagid=0&hide=0&sort=0&keyword=&mapX=0&mapY=0&juli=0&p=1&streetid=0&tj=0";
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

//  String url = "https://www.baidu.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('数据请求与处理'),
      ),
      body: (Scrollbar(
        child: SingleChildScrollView(
          child: Text(_responsenData),
        ),
      )),
    );
  }

  void getData1() async {
    setState(() {
      _responsenData = '请求中...';
    });
    HttpClient httpClient = HttpClient();
    HttpClientRequest _request = await httpClient.getUrl(Uri.parse(url));
    _request.headers.add("user-agent",
        "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
    HttpClientResponse _response = await _request.close();
    _responsenData = await _response.transform(utf8.decoder).join();
    print(_responsenData);
  }

  void getData2() async {
    Response response = await dio.get('LoupanSaiXuan.html', queryParameters: {
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
      _responsenData = response.data.toString();
//      Map houseMap = json.decode(_responsenData);
//      var houses =  HousesBean.fromJson(houseMap);
//      var houses = HousesBean.fromMap(houseMap);
//      var address2 = houses.data[0].address;
//      print('第一个地址:${address2}');
    });
  }
}
