import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:hi_base/color.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main')),
      body: Container(
        child: Wrap(
          children: [
            InkWell(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.yellow,
                    child: Text(
                      '首页',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    )),
                onTap: () => BoostNavigator.instance.push(
                  "home_page", //required
                  withContainer: false, //optional
                  arguments: {"isFromNative":false}, //optional
                  opaque: true, //optional,default value is true
                )),
            InkWell(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.yellow,
                    child: Text(
                      '忘记密码',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    )),
                onTap: () => BoostNavigator.instance.push(
                  "forget_page", //required
                  withContainer: false, //optional
                  arguments: {"isFromNative":false}, //optional
                  opaque: true, //optional,default value is true
                )),
            InkWell(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.yellow,
                    child: Text(
                      '更多',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    )),
                onTap: () => BoostNavigator.instance.push(
                  "mine_page", //required
                  withContainer: false, //optional
                  arguments: {"isFromNative":false}, //optional
                  opaque: true, //optional,default value is true
                )),
            InkWell(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.yellow,
                    child: Text(
                      '新闻',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    )),
                onTap: () => BoostNavigator.instance.push(
                  "news_page", //required
                  withContainer: false, //optional
                  arguments: {"isFromNative":false}, //optional
                  opaque: true, //optional,default value is true
                )),
            InkWell(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.yellow,
                    child: Text(
                      '消息',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    )),
                onTap: () => BoostNavigator.instance.push(
                  "message_page", //required
                  withContainer: false, //optional
                  arguments: {"isFromNative":false}, //optional
                  opaque: true, //optional,default value is true
                )),
            InkWell(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.yellow,
                    child: Text(
                      '家长通讯录',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    )),
                onTap: () => BoostNavigator.instance.push(
                  "contact_page", //required
                  withContainer: false, //optional
                  arguments: {"isFromNative":false}, //optional
                  opaque: true, //optional,default value is true
                )),
            InkWell(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.yellow,
                    child: Text(
                      '教师通讯录',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    )),
                onTap: () => BoostNavigator.instance.push(
                  "teacher_contact_page", //required
                  withContainer: false, //optional
                  arguments: {"isFromNative":false}, //optional
                  opaque: true, //optional,default value is true
                )),
            InkWell(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.yellow,
                    child: Text(
                      '通讯录选择器',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    )),
                onTap: () => BoostNavigator.instance.push(
                  "teacher_select_page", //required
                  withContainer: false, //optional
                  arguments: {"isFromNative":false}, //optional
                  opaque: true, //optional,default value is true
                )),
            InkWell(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.yellow,
                    child: Text(
                      '移动办公',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    )),
                onTap: () => BoostNavigator.instance.push(
                  "oa_page", //required
                  withContainer: false, //optional
                  arguments: {"isFromNative":false}, //optional
                  opaque: true, //optional,default value is true
                )),
          ],
        ),
      ),
    );
  }
}
