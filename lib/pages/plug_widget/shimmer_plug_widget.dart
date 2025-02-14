import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPlugWidget extends StatefulWidget {
  @override
  _ShimmerPlugWidgetState createState() => _ShimmerPlugWidgetState();
}

class _ShimmerPlugWidgetState extends State<ShimmerPlugWidget> {
  bool _enabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300],
                highlightColor: Colors.grey[100],
                enabled: _enabled,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(), //不滚动
                  itemBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 48.0,
                          height: 48.0,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  itemCount: 24,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 8.0),
            //   child: FlatButton(
            //       onPressed: () {
            //         setState(() {
            //           _enabled = !_enabled;
            //         });
            //       },
            //       child: Text(
            //         _enabled ? 'Stop' : 'Play',
            //         style: Theme.of(context).textTheme.button.copyWith(
            //             fontSize: 18.0,
            //             color: _enabled ? Colors.redAccent : Colors.green),
            //       )),
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
