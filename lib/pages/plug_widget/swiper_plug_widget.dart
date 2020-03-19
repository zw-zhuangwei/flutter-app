import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPlugWidget extends StatefulWidget {
  @override
  _SwiperPlugWidgetState createState() => _SwiperPlugWidgetState();
}

class _SwiperPlugWidgetState extends State<SwiperPlugWidget> {
  List<Map<String, String>> imgList = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"}
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300, //不设置高度会报错 且用Column包裹时 要填充一层Container
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                this.imgList[index]['url'],
                fit: BoxFit.fill,
              );
            },
            itemCount: this.imgList.length,
            viewportFraction: 0.8,
            scale: 0.9,
          ),
        ),
        Container(
          height: 300,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                this.imgList[index]['url'],
                fit: BoxFit.fill,
              );
            },
            itemCount: this.imgList.length,
            itemWidth: 300.0,
            layout: SwiperLayout.STACK,
          ),
        ),
      ],
    );
  }
}
