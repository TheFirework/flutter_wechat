import 'package:flutter/material.dart';
import 'package:flutter_wechat/page/personal/personal_more_info.dart';
import 'package:flutter_wechat/page/personal/personal_qr_card.dart';
import 'package:flutter_wechat/widgets/touch_callback.dart';
import 'package:flutter_wechat/widgets/wechat_item.dart';

class PersonalInfo extends StatefulWidget {

  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人信息",style: TextStyle(color: Colors.black,fontSize: 16.0),),
        backgroundColor: Color(0xFFEDEDED),
        leading:IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 20.0,),
          onPressed: (){
            Navigator.of(context).pop();
          }
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: WechatItem(title: "头像",avatar: "http://thirdwx.qlogo.cn/mmopen/6qXicJIMkClJCn4UEKlbCFDjoLMlhKMiboo3sDWIqvIa8LsEGXjplibSfxUIU8bjBDGXBrO3PJlN0czDNlsceyZBjib9zNbyRmZZ/132",),
          ),
          Container(
            margin: const EdgeInsets.only(top:0.5),
            color: Colors.white,
            child: WechatItem(title: "昵称",rightTitle: "这个人有点冷",),
          ),
          Container(
            margin: const EdgeInsets.only(top:0.5),
            color: Colors.white,
            child: WechatItem(title: "微信号",rightTitle: "jiangbo-one",isShowRightIcon: false,),
          ),
          Container(
            margin: const EdgeInsets.only(top:0.5),
            color: Colors.white,
            child: WechatItem(title: "二维码名片",rightImagePath: "assets/images/icon/code.png",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalQrCard()));
            },),
          ),
          Container(
            margin: const EdgeInsets.only(top:0.5),
            color: Colors.white,
            child: WechatItem(title: "更多",onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalMoreInfo()));
            },),
          )
        ],
      ),
    );
  }
}