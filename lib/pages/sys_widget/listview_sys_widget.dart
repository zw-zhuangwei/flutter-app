import 'package:flutter/material.dart';

/// ListView 掌握三种方法
/// ListView.builder() 构建
/// ListView.separated() 构建 用于分组
/// listView custom() 构建

class ListviewSysWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 100,
            itemExtent: 100.0, //item高度
            scrollDirection: Axis.vertical,
            reverse: false, //是否倒序显示 默认正序 false  倒序true

            /// shrinkWrap内容适配 为true 无须设置itemExtent
            //shrinkWrap: true,

            /// primary false，如果内容不足，则用户无法滚动 而如果[primary]为true，它们总是可以尝试滚动。
            /// primary true controller 滑动监听就不能使用了
            primary: false,

            /// cacheExtent  设置预加载的区域
            /// 设置预加载的区域 cacheExtent 强制设置为了 0.0，从而关闭了“预加载”
            cacheExtent: 30.0,

            /// physics为滚动类型
            /// AlwaysScrollableScrollPhysics() 总是可以滑动
            /// NeverScrollableScrollPhysics禁止滚动
            /// BouncingScrollPhysics 内容超过一屏 上拉有回弹效果
            /// ClampingScrollPhysics 包裹内容 不会有回弹
            physics: BouncingScrollPhysics(),
            controller: ScrollController(), //滚动控制
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  Container(
                    child: ListTile(
                      isThreeLine: true,
                      leading: Image.network(
                          'https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1446954166,3973789303&fm=26&gp=0.jpg'),
                      title: Text(
                        "这是主标题" * 10,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text(
                          "我是ListTitle的副标题" * 10,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
