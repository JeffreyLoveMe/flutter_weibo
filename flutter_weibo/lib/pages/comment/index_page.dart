import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  // 当前选中index
  int _currentSelectedIndex = 0;

  List<List<String>> tabIcons = [
    [
      'assets/images/tabbar_home.png',
      'assets/images/tabbar_home_highlighted.png'
    ],
    [
      'assets/images/tabbar_video.png',
      'assets/images/tabbar_video_highlighted.png'
    ],
    [
      'assets/images/tabbar_discover.png',
      'assets/images/tabbar_discover_highlighted.png'
    ],
    [
      'assets/images/tabbar_message_center.png',
      'assets/images/tabbar_message_center_highlighted.png'
    ],
    [
      'assets/images/tabbar_profile.png',
      'assets/images/tabbar_profile_highlighted.png'
    ],
  ];

  List<String> tabTitles = ['首页', '视频', '发现', '消息', '我'];

  var lastExitTime;

  Widget getTabIcon(int index) {
    if (index == _currentSelectedIndex) {
      // 选中
      return Image.asset(tabIcons[index][1], width: 25.0, height: 25.0);
    } else {
      // 未选中
      return Image.asset(tabIcons[index][0], width: 25.0, height: 25.0);
    }
  }

  Widget getTabTitle(int index) {
    if (index == _currentSelectedIndex) {
      // 选中
      return Text(tabTitles[index],
          style: TextStyle(fontSize: 13.0, color: Colors.black));
    } else {
      // 未选中
      return Text(tabTitles[index],
          style: TextStyle(fontSize: 13.0, color: Colors.black));
    }
  }

  @override
  Widget build(BuildContext context) {
    // 分栏 - icon必须加上后缀
    // ！！！构造函数只能调用static方法 - https://www.codeleading.com/article/32302429718
    List<BottomNavigationBarItem> bottomNavigationBarItems = [
      BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
      BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
      BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
      BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3)),
      BottomNavigationBarItem(icon: getTabIcon(4), title: getTabTitle(4)),
    ];
    // ???
    return SafeArea(
        child: WillPopScope(
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                // 背景颜色
                backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
                // 当前有多少Page
                items: bottomNavigationBarItems,
                // 类型
                type: BottomNavigationBarType.fixed,
                // 当前选中Item
                currentIndex: _currentSelectedIndex,
                // 点击Item
                onTap: (index) {
                  // 点击Item
                  // ???
                  setState(() {
                    _currentSelectedIndex = index;
                  });
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
            // WillPopScope组件 - 双击退出App组件
            // Future<bool> Function() - 返回值Future<bool>/无参
            // void Function(int) - 参数是int/无返回值
            onWillPop: () async {
              if (lastExitTime == null ||
                  DateTime.now().difference(lastExitTime) >
                      Duration(seconds: 2)) {
                lastExitTime = DateTime.now();
                // toast
                return false;
              } else {
                lastExitTime = DateTime.now();
                // 退出App
                SystemChannels.platform.invokeListMethod('SystemNavigator.pop');
                return true;
              }
            }));
  }
}
