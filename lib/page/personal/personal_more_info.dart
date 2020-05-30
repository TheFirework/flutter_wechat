import 'package:flutter/material.dart';
import 'package:flutter_wechat/widgets/wechat_item.dart';

class PersonalMoreInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("更多信息",style: TextStyle(color: Colors.black,fontSize: 16.0),),
        backgroundColor: Color(0xFFEDEDED),
        leading:IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 20.0,),
          onPressed: (){
            Navigator.of(context).pop();
          }
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top:0.5),
              color: Colors.white,
              child: WechatItem(title: "性别",rightTitle: "男",),
            ),
            Container(
              margin: const EdgeInsets.only(top:0.5),
              color: Colors.white,
              child: WechatItem(title: "地区",rightTitle: "四川 绵阳",),
            ),
            Container(
              margin: const EdgeInsets.only(top:0.5),
              color: Colors.white,
              child: WechatItem(title: "个性签名",rightTitle: "奇迹会化为寻常，寻常又会推动奇迹的发生。寻常又会推动奇迹的发生。",),
            )
          ],
        ),
      ),
    );
  }
}