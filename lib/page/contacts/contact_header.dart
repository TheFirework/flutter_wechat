import 'package:flutter/material.dart';
import './contact_item.dart';

class ContactHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContactItem(titleName:"新朋友",imagePath:"assets/images/icon/add_friends.png",headerColor: Colors.orange,),
        ContactItem(titleName:"群聊",imagePath:"assets/images/icon/groupchat.png",headerColor: Colors.green,),
        ContactItem(titleName:"标签",imagePath:"assets/images/icon/tag.png",headerColor: Colors.blue,),
        ContactItem(titleName:"公众号",imagePath:"assets/images/icon/public.png",headerColor: Colors.blue,),
      ],
    );
  }
}