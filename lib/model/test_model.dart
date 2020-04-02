class TestModel {
  List<TestItemModel> result;

  //TestModel({this.result});

  TestModel.fromJson(Map<dynamic, dynamic> json) {
    if (json['result'] != null) {
      result = List<TestItemModel>();
      json['result'].forEach((v) {
        result.add(TestItemModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TestItemModel {
  String sId;
  String title;
  String status;
  String pic;
  String url;

  //TestItemModel({this.sId, this.title, this.status, this.pic, this.url});

  TestItemModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    status = json['status'];
    pic = json['pic'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['status'] = this.status;
    data['pic'] = this.pic;
    data['url'] = this.url;
    return data;
  }
}
