import 'package:flutter/material.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget(
      {Key? key,
      required this.func,
      required this.name,
      required this.icon,
      required this.buttonColor})
      : super(key: key);
  final Function func;
  final String name;
  final IconData icon;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: (){
            func();
          },
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
            primary: buttonColor,
            onPrimary: Colors.red,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
