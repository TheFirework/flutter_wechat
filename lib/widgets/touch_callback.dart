import 'package:flutter/material.dart';

class TouchCallBack extends StatefulWidget {

  final Widget child;
  final VoidCallback onPressed;
  final bool isfeed;
  final Color background;

  TouchCallBack({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.isfeed,
    this.background = const Color(0xFFD8D8D8)
  }) : super(key:key);

  @override
  _TouchCallBackState createState() => _TouchCallBackState();
}

class _TouchCallBackState extends State<TouchCallBack> {

  Color color = Colors.transparent;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: color,
        child: widget.child,
      ),
      onTap: widget.onPressed,
      onPanDown: (down){
        if (widget.isfeed == false)return;
        setState(() {
          // color = widget.background;
          color = Colors.transparent;
        });
      },
      onPanCancel: (){
        setState(() {
          color = Colors.transparent;
        });
      },
    );
  }
}