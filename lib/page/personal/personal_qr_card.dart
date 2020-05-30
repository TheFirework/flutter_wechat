import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalQrCard extends StatefulWidget {
  @override
  _PersonalQrCardState createState() => _PersonalQrCardState();
}

class _PersonalQrCardState extends State<PersonalQrCard> {

  Future<int> _showIosActionSheet(BuildContext context){
    showCupertinoModalPopup(context: context, builder: (context){
      var dialog =CupertinoActionSheet(
        title: Text("换个样式"),
        // message: Text('Chose a item !'),
        cancelButton: CupertinoActionSheetAction(
          onPressed: (){
            Navigator.pop(context,1);
          },
          child: Text("取消")
        ),
        actions: <Widget>[
          CupertinoActionSheetAction(onPressed: (){
            Navigator.pop(context,1);
          }, child: Text('保存到手机')),
          CupertinoActionSheetAction(onPressed: (){
            Navigator.pop(context,2);
          }, child: Text('扫描二维码')),
          CupertinoActionSheetAction(onPressed: (){
            Navigator.pop(context,3);
          }, child: Text('重置二维码')),
        ],
      );
      return dialog;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("二维码名片",style: TextStyle(color: Colors.black,fontSize: 16.0),),
        backgroundColor: Color(0xFFEDEDED),
        leading:IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 20.0,),
          onPressed: (){
            Navigator.of(context).pop();
          }
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              _showIosActionSheet(context);
            },
            child: Container(
              margin: EdgeInsets.only(right:10.0),
              child: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Center(
        child: Container(
          height: 500,
          constraints: BoxConstraints(
            maxHeight: 500,
          ),
          margin: EdgeInsets.symmetric(horizontal: 28.0),
          padding: EdgeInsets.only(left: 15.0,top:20.0,right:15.0,bottom: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            children: <Widget>[
              _getUserInfoWidget(),
              SizedBox(height: 20.0,),
              Image.asset("assets/static/qrcode.jpg"),
              Text("扫一扫上面的二维码图案，加我微信",style: TextStyle(color: Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }

  Widget _getUserInfoWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset("assets/images/avatar.png",width:70.0,height: 70.0,),
        ),
        SizedBox(width: 10.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("这个人有点冷",style: TextStyle(fontSize: 15.0),),
            SizedBox(height: 5.0,),
            Text("四川 绵阳",style: TextStyle(color:Colors.grey),)
          ],
        )
      ],
    );
  }
}