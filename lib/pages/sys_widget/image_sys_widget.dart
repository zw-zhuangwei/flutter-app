import 'package:flutter/material.dart';

class ImageSysWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    print(screen.width / 2);
    print(screen.height / 2);
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body:

          /// 引入网路图片示例

          // Container(
          //   child: Image.network(
          //       'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1035415831,1465727770&fm=26&gp=0.jpg',
          //       // alignment: Alignment.topRight, //对齐方式
          //       repeat: ImageRepeat.noRepeat, // 不平铺
          //     // fit: BoxFit.cover,
          //       // 充满整个屏幕
          //     // width: double.infinity,  //宽度充满整个屏幕 container设置宽高 此属性无效
          //   //   height: screen.height/2,  //高度充满整个屏幕 container设置宽高 此属性无效

          //     // color: Colors.yellow, //图片背景
          //     //  colorBlendMode: BlendMode.screen, //混合背景
          //     ),
          //   width: double.infinity,  //宽度充满整个屏幕
          //   height: screen.height/2, //高度为屏幕的一半
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(150, 0, 0, 0),  //透明度度是0-255
          //     borderRadius: BorderRadius.circular(10)  //四个圆角值
          //   ),
          // ),

          /// 引入网路图片圆形示例 方法1

          // Container(
          //   child: Text(
          //     'test',
          //     style: TextStyle(
          //       fontSize: 50,
          //       color: Colors.red,
          //     ),),
          //   width: 300,  //宽度充满整个屏幕
          //   height: 300,
          //   margin: EdgeInsets.fromLTRB((screen.width-300)/2, 100, 0, 0),
          //   alignment: Alignment.center, //内容显示区域
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(150),  //四个圆角值
          //     image: DecorationImage(  //可以理解成背景
          //       image: NetworkImage('https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1035415831,1465727770&fm=26&gp=0.jpg'),
          //       fit: BoxFit.cover,
          //     )
          //   ),
          // ),

          /// 引入网路图片圆形示例 方法2

          // Container(
          //   margin: EdgeInsets.fromLTRB((screen.width-300)/2, 100, 0, 0),
          //   child: ClipOval(
          //     child: Image.network(
          //       'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1035415831,1465727770&fm=26&gp=0.jpg',
          //       width: 300,
          //       height: 300,
          //       fit: BoxFit.cover,
          //       ),
          //   ),
          // ),

          /// 引入本地图片

          // Container(
          //   width: 300,
          //   height: 300,
          // //  margin: EdgeInsets.fromLTRB((screen.width-300)/2, 100, 0, 0),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //      borderRadius: BorderRadius.circular(150)
          //   ),
          //   child: Image.asset(
          //     'static/imgs/face.jpg',
          //    // fit: BoxFit.cover,
          //   ),
          // ),

          /// 引入本地图片画圆

          Container(
        width: 300,
        height: 300,
        margin: EdgeInsets.fromLTRB((screen.width - 300) / 2, 100, 0, 0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(150)),
        child: CircleAvatar(
          //NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
          backgroundImage: AssetImage(
            'static/imgs/face.jpg',
          ),
        ),
      ),
    );
  }
}
