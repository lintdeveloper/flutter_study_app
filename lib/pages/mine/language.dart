import 'package:flutter/material.dart';
import 'package:flutter_study_app/components/my_app_bar.dart';
import 'package:flutter_study_app/components/return_bar.dart';
import 'package:flutter_study_app/main.dart';
import 'package:flutter_study_app/utils/router_util.dart';

import '../../config.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    return Scaffold(
      appBar: ReturnBar('切换语言'),
      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Center(child: Text('中文')),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            ListTile(
              title: Center(child: Text('English')),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            ListTile(
              title: Center(child: Text('日本語')),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
