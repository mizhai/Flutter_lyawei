class HousesBean {
  String msg;
  String hidecount;
  String count;
  int status;
  List<DataListBean> data;

  HousesBean({this.msg, this.hidecount, this.count, this.status, this.data});

  HousesBean.fromJson(Map<String, dynamic> json) {    
    this.msg = json['msg'];
    this.hidecount = json['hidecount'];
    this.count = json['count'];
    this.status = json['status'];
    this.data = (json['data'] as List)!=null?(json['data'] as List).map((i) => DataListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['hidecount'] = this.hidecount;
    data['count'] = this.count;
    data['status'] = this.status;
    data['data'] = this.data != null?this.data.map((i) => i.toJson()).toList():null;
    return data;
  }

}

class DataListBean {
  String id;
  String name;
  String isrecom;
  String areaid;
  String address;
  String thumb;
  String tags;
  String priceType;
  String fzjuli;
  String discount;
  String price;
  String dpnums;
  LpfujiaxinxiBean lpfujiaxinxi;

  DataListBean({this.id, this.name, this.isrecom, this.areaid, this.address, this.thumb, this.tags, this.priceType, this.fzjuli, this.discount, this.price, this.dpnums, this.lpfujiaxinxi});

  DataListBean.fromJson(Map<String, dynamic> json) {    
    this.id = json['id'];
    this.name = json['name'];
    this.isrecom = json['isrecom'];
    this.areaid = json['areaid'];
    this.address = json['address'];
    this.thumb = json['thumb'];
    this.tags = json['tags'];
    this.priceType = json['price_type'];
    this.fzjuli = json['fzjuli'];
    this.discount = json['discount'];
    this.price = json['price'];
    this.dpnums = json['dpnums'];
    this.lpfujiaxinxi = LpfujiaxinxiBean.fromJson(json['lpfujiaxinxi']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['isrecom'] = this.isrecom;
    data['areaid'] = this.areaid;
    data['address'] = this.address;
    data['thumb'] = this.thumb;
    data['tags'] = this.tags;
    data['price_type'] = this.priceType;
    data['fzjuli'] = this.fzjuli;
    data['discount'] = this.discount;
    data['price'] = this.price;
    data['dpnums'] = this.dpnums;
    data['lpfujiaxinxi'] = this.lpfujiaxinxi.toJson();
    return data;
  }
}

class LpfujiaxinxiBean {
  String zhishu;
  String miaoshu;
  int star;

  LpfujiaxinxiBean({this.zhishu, this.miaoshu, this.star});

  LpfujiaxinxiBean.fromJson(Map<String, dynamic> json) {    
    this.zhishu = json['zhishu'];
    this.miaoshu = json['miaoshu'];
    this.star = json['star'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['zhishu'] = this.zhishu;
    data['miaoshu'] = this.miaoshu;
    data['star'] = this.star;
    return data;
  }
}
