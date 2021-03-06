import 'package:flutter/material.dart';
import 'package:flutter_study_app/app.dart';
import 'package:flutter_study_app/config/app_config.dart';
import 'package:flutter_study_app/model/app_model.dart';
import 'package:flutter_study_app/utils/index.dart';

///
/// 闪屏动画
class SplashScreen extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  /// 动画控制器
  AnimationController _animationController;

  /// 动画
  Animation _animation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _animation,
        child: Image.asset(
          Constant.splash,
          scale: 2.0,
          fit: BoxFit.cover,
        ));
  }

  @override
  void initState() {
    super.initState();
    // 初始化动画
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: Constant.splashTime));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    var listener = (status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => FsApp()),
            (router) => router == null);
      }
    };
    _animation.addStatusListener(listener);
    // 播放动画
    _animationController.forward();

    // on application start load data
    _onApplicationStart();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  /// on application start
  _onApplicationStart() {
    AppModel model = CommonUtil.getModel(context);
    model.updatePosts(context);
    model.updateVideos(context);
    model.checkAdmin(context);
  }
}
