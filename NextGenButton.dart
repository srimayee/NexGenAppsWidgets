import 'package:flutter/material.dart';

class NextGenButton extends StatelessWidget {

  NextGenButton({
    Key key,
    this.child,
    this.onTap,
    this.disabled,
    this.focusNode,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);

  final Widget child;
  final Function onTap;
  final bool disabled;
  final FocusNode focusNode;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Material(
          color: color==null?Theme.of(context).buttonColor:color,
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          elevation: 5.0,
          child: MaterialButton(
            focusNode: focusNode==null? null: focusNode,
            onPressed: onTap,
            minWidth: width==null?150.0:width,
            height: height==null?42.0:height,
            child: child,
          ),
        ),
      ],
    );
  }
}