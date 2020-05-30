import 'package:flutter/material.dart';
import 'package:flutter_wechat/page/chat/message_page.dart';
import 'package:flutter_wechat/page/contacts/contacts.dart';
import 'package:flutter_wechat/page/find/find.dart';
import 'package:flutter_wechat/page/personal/personal.dart';

enum ItemType{
  GroupChat,
  AddFriends,
  QrCode,
  Payments,
  Help
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  PageController pageController;
  final List<String> appBarTitle = [
    "微信",
    "通讯录",
    "发现",
    "我的"
  ];

  int _currentIndex = 0;

  List<Widget> pageView = [
    MessagePage(),
    ContactsPage(),
    FindPage(),
    PersonalPage()
  ];

  currentPage(int index){
    setState(() {
      _currentIndex = index;
    });
    // return pageView[index];
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController(
      ///用来配置PageView中默认显示的页面 从0开始
      initialPage: _currentIndex,
      ///为true是保持加载的每个页面的状态
      keepPage: true,
    );
    ///PageView设置滑动监听
    pageController.addListener(() {
      //PageView滑动的距离
      double offset = pageController.offset;
      print("pageView 滑动的距离 $offset");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: PageView(
        onPageChanged:currentPage,
        //滑动到页面底部无回弹效果
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: pageController,
        children: pageView,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        unselectedFontSize: 14.0,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
          pageController.jumpToPage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/tabbar/weixin_normal.png",width: 20.0,height: 30.0,),
            activeIcon: Image.asset("assets/images/tabbar/weixin_pressed.png",width: 20.0,height: 30.0,),
            title: Text('微信',style: TextStyle(color:_currentIndex==0?Color(0xFF46C01B):Color(0xFF999999)),)
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/tabbar/contact_normal.png",width: 20.0,height: 30.0,),
            activeIcon: Image.asset("assets/images/tabbar/contact_pressed.png",width: 20.0,height: 30.0,),
            title: Text('通讯录',style: TextStyle(color:_currentIndex==1?Color(0xFF46C01B):Color(0xFF999999)),)
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/tabbar/find_normal.png",width: 20.0,height: 30.0,),
            activeIcon: Image.asset("assets/images/tabbar/find_pressed.png",width: 20.0,height: 30.0,),
            title: Text('发现',style: TextStyle(color:_currentIndex==2?Color(0xFF46C01B):Color(0xFF999999)),)
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/tabbar/profile_normal.png",width: 20.0,height: 30.0,),
            activeIcon: Image.asset("assets/images/tabbar/profile_pressed.png",width: 20.0,height: 30.0,),
            title: Text('我的',style: TextStyle(color:_currentIndex==3?Color(0xFF46C01B):Color(0xFF999999)),)
          ),
        ]
      ),
    );
  }

  _appBar(){

    if (_currentIndex == 3) {
      return null;
    }

    return AppBar(
        title:Text(appBarTitle[_currentIndex],style: TextStyle(color: Colors.black,fontSize: 16.0),),
        backgroundColor: Color(0xFFEDEDED),
        elevation: 0,
        actions:<Widget>[
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed("search");
            },
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:30.0,right:20.0),
            child: GestureDetector(
              onTap: (){
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                  items: <PopupMenuEntry>[
                    _popupMenuItem("发起群聊",imagePath: "assets/images/icon/send.png"),
                    _popupMenuItem("添加朋友",imagePath: "assets/images/icon/add_friends.png"),
                    _popupMenuItem("扫一扫",imagePath: "assets/images/icon/scan.png"),
                    _popupMenuItem("收付款",icon: Icons.crop_free),
                    _popupMenuItem("帮助与反馈",icon:Icons.email),
                  ]
                );
              },
              child: Icon(Icons.add,color: Colors.black,),
            ),
          )
        ]
    );
  }


  _popupMenuItem(String title,{String imagePath,IconData icon}){
    return PopupMenuItem(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            child: imagePath != null ? Image.asset(imagePath,width: 24.0,height: 24.0) : SizedBox(width: 28.0 ,height: 28.0,child: Icon(icon,color:Colors.white)),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style:TextStyle(color:Colors.white)
            ),
          )
        ]
      )
    );
  }
}