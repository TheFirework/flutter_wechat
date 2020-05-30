import 'package:flutter/material.dart';
import 'package:flutter_wechat/page/personal/payment.dart';
import 'package:flutter_wechat/page/personal/personal_info.dart';
import 'package:flutter_wechat/widgets/touch_callback.dart';
import 'package:flutter_wechat/widgets/wechat_item.dart';

class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 140.0,
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left:20.0,right:15.0),
                    width: 60.0,height: 60.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset("assets/images/avatar.png",fit: BoxFit.fill,),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top:20.0,bottom:20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "这个人有点冷",
                            style:TextStyle(fontSize:18.0,fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "微信号:  jiangbo-one",
                            style: TextStyle(fontSize:14.0,color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.only(right:10.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/icon/code.png",width: 14.0,height: 14.0),
                        SizedBox(width: 16.0,),
                        Image.asset("assets/images/icon/right.png",width:20.0,height: 30.0,)
                      ],
                    ),
                  )
                ],
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalInfo()));
              }
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top:10.0),
              color: Colors.white,
              child: WechatItem(title: "支付",imagePath: "assets/images/icon/pay.png",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
              },),
          ),
          Container(
              margin: const EdgeInsets.only(top:10.0),
              color: Colors.white,
              child: WechatItem(title: "收藏",imagePath: "assets/images/icon/collection.png",),
          ),
          Container(
              margin: const EdgeInsets.only(top:0.5),
              color: Colors.white,
              child: WechatItem(title: "相册",imagePath: "assets/images/icon/album.png",),
          ),
          Container(
              margin: const EdgeInsets.only(top:0.5),
              color: Colors.white,
              child: WechatItem(title: "卡包",imagePath: "assets/images/icon/cardbag.png",),
          ),
          Container(
              margin: const EdgeInsets.only(top:0.5),
              color: Colors.white,
              child: WechatItem(title: "表情",imagePath: "assets/images/icon/expression.png",),
          ),
          Container(
              margin: const EdgeInsets.only(top:10.0),
              color: Colors.white,
              child: WechatItem(title: "设置",imagePath: "assets/images/icon/setting.png",),
          ),
        ],
      ),
    );
  }
}