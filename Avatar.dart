import 'package:Oconee_Neigborhood_Pharmacy/helper/AuthHelper.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
    @required this.func,
  }) : super(key: key);

  final Function func;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthHelper>(
        builder: (context, authHelper, child) {
          print('inside AVATAR consumer');
        return GestureDetector(
          onTap: (){
            func();
          },
          child: authHelper.isLoggedIn() == false ?
          CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  icon: Icon(Icons.account_circle,
                    size: 25,
                    color: Colors.indigo[900],
                  ),
                  onPressed: (){
                    func();
                  })
          ):
          CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(authHelper.firebaseUser.email[0],
                style: TextStyle(fontSize: 30.0),
              )
          )
              /*authHelper.isAdmin() == false?
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(authHelper.firebaseUser.email[0],
              style: TextStyle(fontSize: 30.0),
            )
          ):
              Consumer<List<Map<String, dynamic>>>(
                  builder: (context, refillMap, child) {
                    return Badge(
                        animationType: BadgeAnimationType.slide,
                        badgeContent: Text(refillMap.length.toString(),
                          style: TextStyle(fontSize: 10),),
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(authHelper.firebaseUser.email[0],
                              style: TextStyle(fontSize: 30.0),
                            )
                        ));
                  })*/
      );});
  }
}