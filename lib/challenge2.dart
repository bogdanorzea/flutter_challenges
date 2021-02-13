import 'package:flutter/material.dart';

class Challenge2 extends StatelessWidget {
  const Challenge2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline6.copyWith(color: Colors.white, fontSize: 36);
    final containerColor = Colors.blue[300];
    final shadowColor = Colors.blue[900].withAlpha(170);

    return Scaffold(
      appBar: AppBar(title: Text("Challenge 2")),
      body: Container(
        clipBehavior: Clip.antiAlias,
        width: double.infinity,
        height: 128.0,
        decoration: BoxDecoration(
          color: containerColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(8.0, 8.0),
              blurRadius: 16.0,
              color: shadowColor,
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
        ),
        alignment: Alignment.center,
        child: Text("I am a header", style: textStyle, textAlign: TextAlign.center),
      ),
    );
  }
}
