import 'package:flutter/material.dart';
import 'package:guardial/CallInterfaceScreen.dart';

import 'RoundButtonWidget.dart';
import 'main.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('savannah'
                            , style: TextStyle(color: Colors.white, fontSize: 35),),
                      ),
                      Text('Mobile', style: TextStyle(color: Colors.white, fontSize: 18),),
                    ],
                  ),
                  Spacer(flex: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.access_alarm,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Remind me',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RoundButtonWidget(
                            func: (){
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyApp()), (route) => false);//if you want to disable back feature set to false);
                            },
                            name: 'Decline',
                            icon: Icons.call_end,
                            buttonColor: Colors.red,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.message,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Message',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RoundButtonWidget(
                              func: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => CallInterfaceScreen()), (route) => false);//if you want to disable back feature set to false),
                              },
                              name: 'Accept',
                              icon: Icons.call,
                              buttonColor: Colors.green,
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(
                  )
                ],
              ),
            ),
          ),
    ));
  }
}
