import 'package:flutter/material.dart';

class NextGenMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const NextGenMenuItem({Key key, this.icon, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),

        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}