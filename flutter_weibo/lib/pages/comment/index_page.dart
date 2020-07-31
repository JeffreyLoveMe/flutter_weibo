import 'package:flutter/material.dart';
import 'package:flutter_weibo/pages/Profile/profile_page.dart';
import 'package:flutter_weibo/pages/discover/discover_page.dart';
import 'package:flutter_weibo/pages/home/home_page.dart';
import 'package:flutter_weibo/pages/message/message_page.dart';
import 'package:flutter_weibo/pages/video/video_page.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // 分栏 - icon必须加上后缀
  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/weibo_login_qq.png',
            width: 25.0, height: 25.0),
        title: Text('首页')),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/weibo_login_qq.png',
            width: 25.0, height: 25.0),
        title: Text('视频')),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/weibo_login_qq.png',
            width: 25.0, height: 25.0),
        title: Text('发现')),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/weibo_login_qq.png',
            width: 25.0, height: 25.0),
        title: Text('消息')),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/weibo_login_qq.png',
            width: 25.0, height: 25.0),
        title: Text('我')),
  ];
  // 当前选中index
  int _currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ???
    return SafeArea(
        child: WillPopScope(
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                // 背景颜色
                backgroundColor: Colors.grey,
                // 当前有多少Page
                items: bottomNavigationBarItems,
                // 类型
                type: BottomNavigationBarType.fixed,
                // 当前选中Item
                currentIndex: _currentSelectedIndex,
                // 点击Item
                onTap: (index) {
                  // FIMXE - 点击Item
                },
              ),
              // IndexedStack???
              body: IndexedStack(
                index: _currentSelectedIndex,
                children: <Widget>[
                  HomePage(),
                  VideoPage(),
                  DiscoverPage(),
                  MessagePage(),
                  ProfilePage()
                ],
              ),
            ),
            // ???
            onWillPop: null));
  }
}
