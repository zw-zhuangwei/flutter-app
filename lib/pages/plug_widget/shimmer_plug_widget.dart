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
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: Shimmer.fromColors(
              period: Duration(milliseconds: 1200),
              baseColor: Colors.red,
              highlightColor: Colors.yellow,
              enabled: _enabled,
              child: Text(
                'Shimmer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    print(List.from([1])..addAll([2])); // 合并两个List对象
                    print(Map.from({'a': 1})..addAll({'b': 2})); // 合并两个Map对象
                    _enabled = !_enabled;
                  });
                },
                child: Text(
                  _enabled ? 'Stop' : 'Play',
                  style: Theme.of(context).textTheme.button.copyWith(
                      fontSize: 18.0,
                      color: _enabled ? Colors.redAccent : Colors.green),
                )),
          )
        ],
      ),
    );
  }
}
