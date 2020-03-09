import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '_SchoolState_SchoolState_SchoolState_SchoolState',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Text(
            '_SchoolState2222_SchoolState2222_SchoolState2222_SchoolState2222',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
