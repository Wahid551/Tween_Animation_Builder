import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      duration: Duration(seconds: 4),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double _val, Widget child) {
        return Opacity(
          opacity: _val,
          child: Padding(
            child: child,
            padding: EdgeInsets.only(top: _val * 100),
          ),
        );
      },
      onEnd: () => print("All Done"),
    );
  }
}
