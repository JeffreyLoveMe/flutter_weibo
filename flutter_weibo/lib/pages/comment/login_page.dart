import 'package:flutter/material.dart';

import 'index_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 自定义Widget有两种形式
  // 1>.自定义成员变量
  // 2>.自定义class
  // 此处选择第一种
  Widget _loginTopWidget() {
    return Row(
      /*
      水平布局 - https://blog.csdn.net/yuzhiqiang_1993/article/details/86496145
      start - 将子控件放在主轴的开始位置
      end - 将子控件放在主轴的结束位置
      center - 将子控件放在主轴的中间位置
      spaceBetween - 将主轴空白位置进行均分，排列子元素，首尾没有空隙
      spaceAround - 将主轴空白区域均分，使中间各个子控件间距相等，首尾子控件间距为中间子控件间距的一半
      spaceEvenly - 将主轴空白区域均分，使各个子控件间距相等
       */
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // 类似于iOS的手势
        InkWell(
          // 内边距 - 扩大点击区域
          child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Image.asset(
                'assets/images/weibo_login_close.png',
                width: 20.0,
                height: 20.0,
              )),
          onTap: () {
            // FIXME - 退出页面
          },
        ),
        // RaisedButton
        // https://blog.csdn.net/chunchun1230/article/details/82460257
        Container(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: RaisedButton(
                onPressed: () {
                  // FIXME - 点击“帮助”
                },
                child: Text(
                  '帮助',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16.0,
                    // 字体颜色
                    color: Color(0xff6B91BB),
                  ),
                ),
                color: Colors.white),
          ),
        )
      ],
    );
  }

  Widget _loginTitleWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 20.0),
      child: Text(
        '请输入账号密码',
        textAlign: TextAlign.left,
        maxLines: 1,
        style: TextStyle(fontSize: 24.0, color: Colors.black),
      ),
    );
  }

  Widget _loginAccountTextFieldWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Text('手机号或者邮箱'),
    );
  }

  Widget _loginPwdTextFieldWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
      child: Text('请输入密码'),
    );
  }

  Widget _loginBtnWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0),
      child: RaisedButton(
        onPressed: () {
          // FIXME - 登录微博
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (buildContext) {
            return IndexPage();
          }));
        },
        // 背景颜色
        color: Color(0xffFF8200),
        // 禁止点击背景颜色
        disabledColor: Color(0xffFFD8AF),
        // 字体颜色
        textColor: Colors.white,
        // 禁止点击字体颜色
        disabledTextColor: Colors.white,
        // 正常情况下浮动的距离？？？
        elevation: 0.0,
        disabledElevation: 0.0,
        highlightElevation: 0.0,
        // 当一个widget没有‘padding属性’（例如Text()）
        // 可以使用以下方法
        child: Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            '登  录',
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }

  Widget _loginRegisterBtnWidget() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 3.0),
              child: Text(
                '注册',
                style: TextStyle(fontSize: 13.0, color: Color(0xff6B91BB)),
              ),
            ),
            onTap: () {
              // FIXME - 注册
            },
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.only(top: 3.0, right: 20.0),
              child: Text(
                '忘记密码',
                style: TextStyle(fontSize: 13.0, color: Color(0xff6B91BB)),
              ),
            ),
            onTap: () {
              // FIXME - 忘记密码
            },
          )
        ],
      ),
    );
  }

  Widget _loginOtherWay() {
    return Container(
      margin: EdgeInsets.only(top: 150.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              '其他登录方式',
              style: TextStyle(fontSize: 12.0, color: Color(0xff999999)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20, top: 10),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/weibo_login_weixin.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                    Text(
                      '微信',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xff999999),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/weibo_login_qq.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                    Text(
                      'QQ',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xff999999),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          child: new DropdownButtonHideUnderline(
            // 此处为什么使用ListView - 为什么ListView有动态的效果
            // 如果使用Column就不会有动态的效果
            child: new ListView(
              children: <Widget>[
                // 顶部
                _loginTopWidget(),
                // 请输入密码
                _loginTitleWidget(),
                // 账号输入框
                _loginAccountTextFieldWidget(),
                // 密码输入框
                _loginPwdTextFieldWidget(),
                // 登录Btn
                _loginBtnWidget(),
                // 注册Btn
                _loginRegisterBtnWidget(),
                // 三方登录
                _loginOtherWay(),
              ],
            ),
          ),
          // 背景颜色
          color: Colors.white,
        ),
      ),
    );
  }
}
