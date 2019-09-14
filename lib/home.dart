import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'circle progress.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  AnimationController progressController;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    progressController = AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    animation = Tween<double>(begin: 0,end: 100).animate(progressController)..addListener((){
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              CustomPaint(

                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                child: Container(
                  width: 200,
                  height: 200,
                  child: GestureDetector(
                      onTap: (){
                        if(animation.value == 100){
                          progressController.reverse();
                        }else {
                          progressController.forward();
                        }
                      },
                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),))),
                ),
              ),
            ],
          )
        )


      ),
    );
  }
}
