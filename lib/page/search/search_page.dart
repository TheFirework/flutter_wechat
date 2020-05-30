import 'package:flutter/material.dart';
import 'package:flutter_wechat/widgets/touch_callback.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  FocusNode focusNode = FocusNode();

  _requestFocus(){
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  _getText(String text){
    return TouchCallBack(
      isfeed: false,
      onPressed: (){
        print("搜索$text");
      },
      child: Text(text,style:TextStyle(fontSize:14.0,color:Colors.blueGrey),textAlign:TextAlign.center),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top:25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                _getSearchInputWidget(),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top:30.0),
              child: Text("搜索指定内容",style: TextStyle(fontSize:14.0,color:Color(0xFFB5B5B5)),),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: _getText("朋友圈"),
                  ),
                  Expanded(
                    child: _getText("文章"),
                  ),
                  Expanded(
                    child: _getText("公众号"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: _getText("小程序"),
                  ),
                  Expanded(
                    child: _getText("音乐"),
                  ),
                  Expanded(
                    child: _getText("表情"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 输入框
  Widget _getSearchInputWidget(){
    return Container(
        alignment: Alignment.centerLeft,
        height: 45.0,
        margin: const EdgeInsets.only(left: 10.0,top:20.0,right:10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 34.0
                ),
                child: TextField(
                  focusNode: focusNode,
                  style:TextStyle(
                    color:Colors.black,
                    fontSize: 16.0,
                  ),
                  onChanged: (String text){},
                    decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 2.0),
                      hintText: "搜索",
                      hintStyle: TextStyle(color:Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none
                      ),
                      prefixIcon: Icon(Icons.search,size:20.0,color: Colors.grey,),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                ),
              )
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                margin: const EdgeInsets.only(left:10.0),
                child: Text("取消",style: TextStyle(color:Colors.blueGrey),),
              ),
            )
          ],
      ),
    );
  }
}