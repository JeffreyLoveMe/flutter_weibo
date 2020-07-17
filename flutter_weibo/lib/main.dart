import 'package:flutter/material.dart';
/*
3.怎么导入自定义文件 - 需要手动写出全路径
 */
import 'package:flutter_weibo/pages/comment/splash_page.dart';

/*
1.新建flutter项目
1>.选中“做边栏” - command + shift + p
2>.搜索“Flutter:New Project”
3>.输入项目名称“flutter_weibo” - 必须小写
4>.删除“main.dart”文件中所有代码
 */

void main() => runApp(MyApp());
// void main() {
//   return runApp(MyApp());
// }

/*
2.StatelessWidget/StatefulWidget的区别？？？
1>.优先使用StatelessWidget
2>.StatelessWidget - 无状态的Widget
3>.StatefulWidget - 有状态的Widget
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        // 整个App的标题
        title: '微博',
        // 隐藏右边的’debug图标‘
        debugShowCheckedModeBanner: false,
        // App主题
        // 此处可以继续扩充
        theme: ThemeData(primaryColor: Colors.white),
        // 入口 - 这里一般设置第一个页面
        // 此时我们需要”新建文件和文件夹“ - flutter中文件名习惯小写'splash_page'
        // 类名建议还是可以大写SplashPage
        home: SplashPage(),
      ),
    );
  }
}
