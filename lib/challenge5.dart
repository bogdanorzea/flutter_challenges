import 'package:flutter/material.dart';

class Challenge5 extends StatelessWidget {
  const Challenge5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Challenge 5")),
      body: Center(
        child: Transform.scale(
          scale: 1 / 24.0,
          child: Transform.scale(
            scale: 24.0,
            child: Text(
              "Scale",
              style: TextStyle(fontSize: 36, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
