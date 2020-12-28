import 'package:flutter/material.dart';
import 'package:tween_animation/screenTitle.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.png"),
                  fit: BoxFit.fill,
                  alignment: Alignment.topLeft),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30),
                SizedBox(
                  height: 160,
                  child: ScreenTitle(text: 'Wahid Tips'),
                ),
              ],
            )));
  }
}
