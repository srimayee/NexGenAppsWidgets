
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconButtonWText extends StatelessWidget {
  IconButtonWText({required this.iconData, required this.url, required this.text, this.disabled = false});
  IconData iconData;
  String url;
  String text;
  bool disabled;

  @override
  Widget build(BuildContext context) {
    var launchFunc = disabled == true? null : (){
      launch(url);
    };
    return InkWell(
      child: TextButton(
        onPressed: launchFunc,
        child: Column(
          children: [
            Icon(iconData,
              color: disabled == true? Colors.grey :Color(0xff0CEEC4),),
            Text(text,
              style: TextStyle(
                  color: disabled == true? Colors.grey :Color(0xff0CEEC4)),)
          ],
        ),
      ),
    );
  }
}
