import 'package:flutter/material.dart';

class NextGenContainer extends StatelessWidget {
  NextGenContainer({
    Key key,
    this.child,
    this.width,
    this.height,
  }) : super(key: key);

  final Widget child;
  final double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width == null? MediaQuery.of(context).size.width : width,
      height: height == null? null : height,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        /*border: Border.all(
            color: Colors.indigo[900],
            width: 5.0
          ),*/
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Theme.of(context).primaryColor,
                blurRadius: 10.0,
                offset: Offset(0.0, 0.7)
            )
          ],
          color: Colors.white
      ),
      child: child,
    );
  }
}