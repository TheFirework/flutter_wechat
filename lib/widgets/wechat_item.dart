import 'package:flutter/material.dart';
import './touch_callback.dart';

class WechatItem extends StatelessWidget {

  final String title;
  final String imagePath;
  final Icon icon;
  final String rightTitle;
  final String avatar;
  final String rightImagePath;
  final double height;
  final VoidCallback onTap;
  final bool isShowRightIcon;

  const WechatItem({Key key, @required this.title, this.imagePath, this.icon, this.rightTitle, this.avatar, this.rightImagePath, this.height = 60.0, this.onTap, this.isShowRightIcon = true}) : super(key: key);

  _init(context){
    switch (title) {
          case "朋友圈":
            Navigator.of(context).pushNamed('/friends');
            break;
          case "收藏":
            break;
          default:
            onTap();
        }
  }

  @override
  Widget build(BuildContext context) {
    return TouchCallBack(
      onPressed: (){
        switch (title) {
          case "朋友圈":
            Navigator.of(context).pushNamed('/friends');
            break;
          case "收藏":
            break;
          default:
            onTap();
        }
      },
      child: Container(
        constraints: BoxConstraints(
          minHeight: height,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right:10.0),
                    child: imagePath != null ? Padding(
                    padding: const EdgeInsets.only(left:20.0,right:10.0),
                      child: Image.asset(imagePath,width:24.0,height:32.0),
                  ) : Container(),
                  ),
                    // Expanded(child: Text(title,style:TextStyle(fontSize: 16.0,color: Color(0xFF353535))),),
                  Container(
                    child: Text(title,style:TextStyle(fontSize: 16.0,color: Color(0xFF353535))),
                  ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    _getAvatarWidget(),
                    _getRightTitleWidget(),
                    _getRightImageWidget(),
                    SizedBox(width: 5.0,),
                    _getRightIcon()
                    // Image.asset("assets/images/icon/right.png",width: 20.0,height: 30.0)
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _getRightIcon(){
    if (isShowRightIcon == true) {
      return Image.asset("assets/images/icon/right.png",width: 20.0,height: 30.0);
    } else {
      return Container();
    }
  }

  Widget _getAvatarWidget(){
    if (avatar != null) {
      return Container(
        height: 60.0,
        width: 60.0,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: NetworkImage(avatar),
          ),
       ),
      );
    } else {
      return Container();
    }
  }

  _getRightTitleWidget(){
    if (rightTitle != null) {
      return Flexible(
        child: Container(
          padding: EdgeInsets.only(right: 3.0),
          child: Text(rightTitle,overflow: TextOverflow.ellipsis,),
        )
      );
    }
    return Container();
  }

  _getRightImageWidget(){
    if (rightImagePath != null) {
      return Image.asset(rightImagePath,width: 16.0,height: 16.0,);
    }
    return Container();
  }

}