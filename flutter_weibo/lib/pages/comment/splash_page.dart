import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  /*
  什么方法 - 
  什么作用 - 
  怎么调用 - 
   */
  @override
  void initState() {
    super.initState();
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
              // ？？？
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
