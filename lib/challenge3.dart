import 'package:flutter/material.dart';

class Challenge3 extends StatelessWidget {
  const Challenge3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.blue;
    final colorOverlay = Colors.blue[200];
    final textStyle = Theme.of(context).textTheme.headline6.copyWith(
          color: Colors.white,
          fontSize: 36,
          fontWeight: FontWeight.normal,
        );
    final containerHeight = 88.0;
    final containerWidth = 320.0;

    return Scaffold(
      appBar: AppBar(title: Text("Challenge 3")),
      body: Container(
        margin: EdgeInsets.all(40),
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(containerHeight / 2)),
        ),
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.centerLeft,
        child: Container(
          color: colorOverlay,
          width: containerWidth - containerHeight,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: containerHeight / 2),
          child: Text("Challenge", style: textStyle),
        ),
      ),
    );
  }
}
