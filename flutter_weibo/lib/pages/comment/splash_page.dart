import 'package:flutter/material.dart';
import 'package:flutter_weibo/pages/comment/index_page.dart';
import 'package:flutter_weibo/pages/comment/login_page.dart';
import 'package:flutter_weibo/pages/utils/user_utils.dart';

class SplashPage extends StatefulWidget {
  // 构造函数 - 不属于生命周期/第一个调用
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  /*
  什么方法 - 初始化函数
  什么作用 - 只会调用一次/做一些初始化工作
  什么时候调用 - 当插入渲染树的时候调用
   */
  // 调用顺序 - 构造函数 -> initState() -> build()
  @override
  void initState() {
    super.initState();
    // 需要在这里判断“去登录页面” OR “去微博首页”
    // 延迟方法
    Future.delayed(Duration(seconds: 2), () {
      // 判断是否登录
      if (UserUtils.isLogin()) {
        // 2>.去微博首页
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (buildContext) {
          return IndexPage();
        }));
      } else {
        // 1>.去登录页面
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (buildContext) {
          return LoginPage();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // 垂直布局
      child: Column(
        children: <Widget>[
          // 水平布局
          // 第一个控件
          Row(
            children: <Widget>[
              // Expanded只能用于Row/Column...
              // Expanded表示充满 - Row使用Expanded不能设置width/Column使用Expanded不能设置height
              Expanded(
                child: Container(
                  // 子widget的对齐方式
                  alignment: Alignment.center,
                  // 外边距
                  margin: EdgeInsets.all(100),
                  // 子widget
                  // https://www.jianshu.com/p/946e09ee3dd8
                  child: Image.asset(
                    'assets/images/welcome_splash_slogan.png',
                    fit: BoxFit.contain,
                    width: 200,
                    height: 100,
                  ),
                  // // 如果自己已经设置width/height则以自己为准
                  // // 如果自己没有设置width/height则以子widget为准
                  // width: 100,
                  // height: 200,
                ),
              ),
            ],
          ),
          // 第二个控件
          Expanded(
            child: Column(
              // ？？？
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/welcome_splash_logo.png',
                    width: 100,
                    height: 100,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
