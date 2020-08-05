import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // 顶部UI
  Widget _topTitleWidget() {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // 第一个控件
          Expanded(
            child: Container(
              // 默认在左上角
              margin: EdgeInsets.only(left: 15),
              // 设置“文字/内容/子控件”在父控件的位置
              // centerLeft - 垂直水平
              alignment: Alignment.centerLeft,
              child: Image.asset(
                '',
                width: 25.0,
                height: 25.0,
              ),
            ),
            flex: 1,
          ),
          // 第二个控件
          Expanded(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  '我',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                )),
            flex: 1,
          ),
          // 第三个控件
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 55),
              alignment: Alignment.centerRight,
              child: Image.asset(
                '',
                width: 25.0,
                height: 25.0,
              ),
            ),
            flex: 1,
          ),
          // 第四个控件
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 15),
              alignment: Alignment.centerRight,
              child: Image.asset(
                '',
                width: 25.0,
                height: 25.0,
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            _topTitleWidget(),
          ],
        ),
      ),
    );
  }
}
