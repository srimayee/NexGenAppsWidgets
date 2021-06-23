import 'package:flutter/material.dart';

class HintText extends StatelessWidget {

  HintText({
    Key key,
    this.text = 'Hit tab/enter button to go to next field',
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.lightbulb_outline, color: Colors.indigo[900],),
        Expanded(child: Text('$text', style: Theme.of(context).textTheme.body2)),
      ],
    ));
  }
}