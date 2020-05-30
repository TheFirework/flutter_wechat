import 'package:flutter/material.dart';
import 'package:flutter_wechat/page/app.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_wechat/page/loading.dart';
import 'package:flutter_wechat/page/personal/personal_info.dart';
import 'package:flutter_wechat/page/personal/personal_more_info.dart';
import 'package:flutter_wechat/page/search/search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Wechat',
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        "app": (BuildContext context) => App(),
        "/info":(BuildContext context) => PersonalInfo(),
        "/more":(BuildContext context) => PersonalMoreInfo(),
        "/friends":(_) => WebviewScaffold(
          url: "https://weixin.qq.com",
          appBar: AppBar(
            title:Text("微信朋友圈")
          ),
          withZoom: true,
          withLocalStorage: true,
        ),
        'search':(BuildContext context) => SearchPage()
      },
      home: Loading(),
    );
  }
}


final ThemeData defaultTheme = ThemeData(
  primaryColor: Color(0xFF303030),
  scaffoldBackgroundColor: Color(0xFFEBEBEB),
  splashColor: Colors.transparent,
  cardColor: Color(0xFF393A3F)
);
