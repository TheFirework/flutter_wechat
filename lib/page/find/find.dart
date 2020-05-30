import 'package:flutter/material.dart';
import 'package:flutter_wechat/widgets/wechat_item.dart';

class FindPage extends StatefulWidget {
  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
        children: <Widget>[
            Container(
              color: Colors.white,
              child: WechatItem(title: "朋友圈",imagePath: "assets/images/icon/friends.png",),
            ),
            Container(
              margin: const EdgeInsets.only(top:10.0),
              color: Colors.white,
              child: WechatItem(title: "摇一摇",imagePath: "assets/images/icon/shake.png",),
            ),
            Container(
              margin: const EdgeInsets.only(top:10.0),
              color: Colors.white,
              child: WechatItem(title: "漂流瓶",imagePath: "assets/images/icon/bottle.png",),
            ),
            Container(
              margin: const EdgeInsets.only(top:10.0),
              color: Colors.white,
              child: WechatItem(title: "附近的人",imagePath: "assets/images/icon/people.png",),
            ),
            Container(
              margin: const EdgeInsets.only(top:10.0),
              color: Colors.white,
              child: WechatItem(title: "购物",imagePath: "assets/images/icon/shop.png",),
            ),
            Container(
              margin: const EdgeInsets.only(top:10.0),
              color: Colors.white,
              child: WechatItem(title: "游戏",imagePath: "assets/images/icon/game.png",),
            ),
            Container(
              margin: const EdgeInsets.only(top:10.0),
              color: Colors.white,
              child: WechatItem(title: "小程序",imagePath: "assets/images/icon/applet.png",),
            )
          ],
        ),
      ),
    );
  }
}