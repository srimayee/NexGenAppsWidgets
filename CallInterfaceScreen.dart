import 'package:flutter/material.dart';

import 'RoundButtonWidget.dart';
import 'main.dart';

class CallInterfaceScreen extends StatefulWidget {
  const CallInterfaceScreen({Key? key}) : super(key: key);

  @override
  _CallInterfaceScreenState createState() => _CallInterfaceScreenState();
}

class _CallInterfaceScreenState extends State<CallInterfaceScreen> {
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
                    ],
                  ),
                  Spacer(flex: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundButtonWidget(
                        func: (){
                          },
                        name: 'help',
                        icon: Icons.priority_high,
                        buttonColor: Colors.red,
                      ),
                      RoundButtonWidget(
                        func: (){
                          },
                        name: 'keypad',
                        icon: Icons.dialpad,
                        buttonColor: Colors.grey,
                      ),
                      RoundButtonWidget(
                        func: (){
                          },
                        name: 'audio',
                        icon: Icons.volume_up,
                        buttonColor: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundButtonWidget(
                        func: (){
                          },
                        name: 'warn',
                        icon: Icons.location_on,
                        buttonColor: Colors.yellow,
                      ),
                      RoundButtonWidget(
                        func: (){
                          },
                        name: 'facetime',
                        icon: Icons.videocam_rounded,
                        buttonColor: Colors.grey,
                      ),
                      RoundButtonWidget(
                        func: (){
                          },
                        name: 'contacts',
                        icon: Icons.contacts,
                        buttonColor: Colors.grey,
                      ),
                    ],
                  ),
                  Spacer(flex: 3),
                  RoundButtonWidget(
                    func: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyApp()), (route) => false);//if you want to disable back feature set to false),
                    },
                    name: 'End',
                    icon: Icons.check_outlined,
                    buttonColor: Colors.green,
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
    ));
  }
}
