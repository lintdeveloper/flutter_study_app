import 'package:flutter/material.dart';
import 'package:flutter_study_app/components/return_bar.dart';

import '../../config.dart';

class Day3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReturnBar('第22天'),
      body: Center(child: Text('这是博客')),
    );
  }
}
