import 'package:flutter/material.dart';
import './contact_vo.dart';

class ContactItem extends StatelessWidget {

  final ConatctVO item;
  final String titleName;
  final String imagePath;
  final Color headerColor;

  ContactItem({this.titleName, this.imagePath, this.item, this.headerColor = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom:BorderSide(width: 0.5,color:Color(0xFFD9D9D9)))
      ),
      height: 56.0,
      child: FlatButton(
        onPressed: (){},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            imagePath == null ? ClipRRect(
              borderRadius:BorderRadius.circular(5),
              child: Image.network(item.avatarUrl != '' ? item.avatarUrl : "http://thirdwx.qlogo.cn/mmopen/6qXicJIMkClJCn4UEKlbCFDjoLMlhKMiboo3sDWIqvIa8LsEGXjplibSfxUIU8bjBDGXBrO3PJlN0czDNlsceyZBjib9zNbyRmZZ/132",
              width:36.0,
              height:36.0,
              scale: 0.9,
              fit: BoxFit.cover
              ),
            )
            : Container(
              width:36.0,
              height:36.0,
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: headerColor,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Image.asset(imagePath,width:21.0,height:21.0),
            ),
            Container(
              margin: const EdgeInsets.only(left:12.0),
              child: Text(
                titleName == null ? item.name ?? "暂时" : titleName,
                style: TextStyle(fontSize:16.0,color:Color(0xFF353535))
              ),
            )
          ],
        )
      ),
    );
  }
}