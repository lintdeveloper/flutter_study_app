import 'package:flutter/material.dart';
import 'package:flutter_study_app/utils/random_util.dart';

class GameEnginesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: RandomUtil.randomColor(),
      body: Center(
          child: Text(
        '这是游戏引擎',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
              fontSize: 20),
      )),
    );
  }
}