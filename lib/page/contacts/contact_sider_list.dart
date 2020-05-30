import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './contact_vo.dart';

const siderBarKey = <String>[
  "↑","☆","A","B","C","D","E","F","G","H",'I',"J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
];

class ContactSiderList extends StatefulWidget {

  final List<ConatctVO> items;
  final IndexedWidgetBuilder headerBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;

  const ContactSiderList({Key key, @required this.items, this.headerBuilder, this.itemBuilder, this.sectionBuilder}) : super(key: key);

  @override
  _ContactSiderListState createState() => _ContactSiderListState();
}

class _ContactSiderListState extends State<ContactSiderList> {

  Color _pressColor = Colors.transparent;

  final ScrollController _scrollController = ScrollController();

  final ScrollController _letterScrollController = ScrollController();

  bool _onNotification(ScrollNotification notification){
    return true;
  }

  _isShowHeaderView(index){
    if (index == 0 && widget.headerBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context,index),
      );
    }
    return Container();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _letterScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: widget.items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      _isShowHeaderView(index),
                      Offstage(
                        offstage: _shouldShowHeader(index),
                        child: widget.sectionBuilder(context,index),
                      ),
                      Column(
                        children: <Widget>[
                          widget.itemBuilder(context,index)
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 50.0,
            right: 0.0,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: 32.0,
              color: _pressColor,
              // child: GestureDetector(
              //   onTapDown: (TapDownDetails t){
              //     // 手指按下
              //     setState(() {
              //       _pressColor = Colors.grey;
              //     });
              //   },
              //   onTapUp: (TapUpDetails t){
              //     // 手指抬起
              //     setState(() {
              //       _pressColor = Colors.transparent;
              //     });
              //   },
              //   onVerticalDragStart: (DragStartDetails d){
              //     // 开始垂直滑动
              //     setState(() {
              //       _pressColor = Colors.grey;
              //     });
              //   },
              //   onVerticalDragEnd: (DragEndDetails d){
              //     // 结束垂直滑动
              //     setState(() {
              //       _pressColor = Colors.transparent;
              //     });
              //   },
              //   onVerticalDragUpdate: (DragUpdateDetails d){
              //     // 手指垂直滑动时
              //   },
                child: ListView.builder(
                  controller: _letterScrollController,
                  itemCount: siderBarKey.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 17.0,
                        child: Text(siderBarKey[index]),
                      ),
                    );
                  },
                ),
              ),
            )
          // )
        ],
      ),
    );
  }

  _shouldShowHeader(int position){
    if (position < 0) {
      return false;
    }

    if (position  == 0) {
      return false;
    }

    if (position != 0 && widget.items[position].seationKey != widget.items[position-1].seationKey) {
      return false;
    }
    return true;
  }

  // @override
  listScrollToPosition(int index) {
    // 根据滑动的字母返回listview中的位置
    for (var i = 0; i < widget.items.length; i++) {
      if (siderBarKey[index] == "☆" || siderBarKey[index] == "↑") {
        _scrollController.jumpTo(0.0);
      } else if (widget.items[i].seationKey == siderBarKey[index]) {
        var height = 4 * 56.0 + 32.0 * index;
        height += i * 46.0;
        _scrollController.jumpTo(height);
      }
    }
    return -1;
  }

}

abstract class SectionIndexer {
  listScrollToPosition(int index);
}