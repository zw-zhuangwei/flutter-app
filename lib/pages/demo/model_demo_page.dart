import 'package:flutter/material.dart';

import '../../model/test_model.dart';

class ModelDemoPage extends StatefulWidget {
  @override
  _ModelDemoPageState createState() => _ModelDemoPageState();
}

class _ModelDemoPageState extends State<ModelDemoPage> {
  List _result = [];
  Map testJson = {
    "result": [
      {
        "_id": "59f6ef443ce1fb0fb02c7a43",
        "title": "笔记本电脑",
        "status": "1",
        "pic": "public\\upload\\UObZahqPYzFvx_C9CQjU8KiX.png",
        "url": "12"
      },
      {
        "_id": "5a012efb93ec4d199c18d1b4",
        "title": "第二个轮播图",
        "status": "1",
        "pic": "public\\upload\\f3OtH11ZaPX5AA4Ov95Q7DEM.png"
      },
      {
        "_id": "5a012f2433574208841e0820",
        "title": "第三个轮播图",
        "status": "1",
        "pic": "public\\upload\\s5ujmYBQVRcLuvBHvWFMJHzS.jpg"
      },
      {
        "_id": "5a688a0ca6dcba0ff4861a3d",
        "title": "教程",
        "status": "1",
        "pic": "public\\upload\\Zh8EP9HOasV28ynDSp8TaGwd.png"
      }
    ]
  };

  @override
  void initState() {
    super.initState();

    List<int> numbers = [1000, 200, 300];
    numbers.sort((a, b) => a.compareTo(b));
    print(numbers); // [two, four, three]

    TestModel json = TestModel.fromJson(testJson);
    setState(() {
      this._result = json.result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: this._result.length,
        itemBuilder: (BuildContext context, int index) {
          TestItemModel rs = this._result[index];
          return Text('${rs.pic}');
        },
      ),
    );
  }
}
