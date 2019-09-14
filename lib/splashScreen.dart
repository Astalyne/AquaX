import 'dart:async';

import 'package:aquax/util.dart';
import 'package:flutter/material.dart';

class SplashScrean extends StatefulWidget {

  SplashScrean({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SplashScreanState createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => MyNavigator.goToHome(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Image.asset('images/splashPic2.jpg', fit: BoxFit.fill, height: 2000, width: 1000,),
            //decoration: BoxDecoration(color: Color(0xFFc9c9c9)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        //alignment: Alignment.center,
                        children: <Widget>[
//                          CircleAvatar(
//                              backgroundColor: Color(0xFF7d7d7d),
//                            radius: 73.5,
//                          ),
                          Padding(padding: EdgeInsets.only(top: 100.0),),
                          Container(
                          child: Column(
                           children: <Widget>[
                             Padding(padding: EdgeInsets.only(top: 200.0),),
                             Image.asset('images/logo.png', height: 300,),
                           ],
                         ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
