import 'package:aquax/splashScreen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

var routes = <String, WidgetBuilder>{
  '/home': (BuildContext context) => Home(),
};

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AQUAx',
      routes: routes,
      home: SplashScrean(title: 'AQUAx'),
    );
  }
}
