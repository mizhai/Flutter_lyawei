import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lyawei/bean/HouseListBean.dart';

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

  var j =
      '{"status": 1,"msg": "OK","hidecount": "113","count": "920","data": [{"id": "1984","name": "富田城九鼎公馆","isrecom": "1","areaid": "5","address": "管城区-管城回族区南三环与郑尉路交叉口东南角","thumb": "http://imga.mizhai.com/newhouse/2018-03/06/5a9e2f56553de-re.jpg","tags": "地铁","price_type": "元/㎡","fzjuli": "0","discount": "","dpnums": "111","lpfujiaxinxi": {"zhishu": "1.1","star": 2,"miaoshu": "若隐若现"}}]}';

  var jj =
      '{"status": 1,"msg": "OK","hidecount": "113","count": "920","data": [{"id": "1984","name": "富田城九鼎公馆","isrecom": "1","areaid": "5","address": "管城区-管城回族区南三环与郑尉路交叉口东南角","thumb": "http://imga.mizhai.com/newhouse/2018-03/06/5a9e2f56553de-re.jpg","tags": "地铁","price_type": "元/㎡","fzjuli": "0","discount": "","dpnums": "111","lpfujiaxinxi": {"zhishu": "1.1","star": 2,"miaoshu": "若隐若现"}}]}';

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

    var decode = jsonDecode(_responsenData);
    var houseListBean = HouseListBean.fromJson(decode);
    print(houseListBean.data[0].name);
  }

  void getData2() async {
    setState(() {
      _responsenData = '请求中...';
    });
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
      _responsenData = houseListBean.data[1].name;
    });
  }
}
