import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_wechat/page/contacts/contact_item.dart';
import './contact_header.dart';
import './contact_sider_list.dart';
import './contact_vo.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
        items: conatctData,
        headerBuilder: (BuildContext context,int index){
          return Container(
            child: ContactHeader(),
          );
        },
        itemBuilder: (BuildContext context,int index){
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(item: conatctData[index]),
          );
        },
        sectionBuilder: (BuildContext context,int index){
          return Container(
            height: 32.0,
            padding: const EdgeInsets.only(left:14.0),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            child: Text(
              conatctData[index].seationKey,
              style: TextStyle(fontSize:14.0,color:Color(0xFF909090)),
            ),
          );
        },
      ),
    );
  }
}