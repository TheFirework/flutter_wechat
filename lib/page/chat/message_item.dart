import 'package:flutter/material.dart';
import './message_data.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_wechat/widgets/touch_callback.dart';

class MessageItem extends StatelessWidget {

  final MessageData message;
  MessageItem(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom:BorderSide(width: 0.5,color:Color(0xFFD9D9D9)))
      ),
      height: 80.0,
      child: TouchCallBack(
        onPressed: (){},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 13.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(message.avatar,width:48.0,height:48.0),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(message.title,style: TextStyle(fontSize:16.0,color:Color(0xFF353535))),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0)
                  ),
                  Text(message.subTitle,style: TextStyle(fontSize:16.0,color:Colors.grey),maxLines: 1,overflow: TextOverflow.ellipsis,),
                ],
              )
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right:12.0,top:12.0),
              child: Text(
                formatDate(message.time,[HH,':',nn]).toString(),
                style: TextStyle(
                  fontSize:14.0,
                  color:Colors.grey
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}