import 'dart:ui';

import 'package:flutter/material.dart';

class Challenge4 extends StatelessWidget {
  const Challenge4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const firstColor = Colors.deepOrange;
    const secondColor = Colors.amber;
    final textSytle = Theme.of(context).textTheme.headline3.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.italic,
          letterSpacing: 0,
        );

    return Scaffold(
      appBar: AppBar(title: Text("Challenge 4")),
      body: Container(
        margin: const EdgeInsets.all(36),
        padding: const EdgeInsets.all(18),
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: firstColor,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              offset: Offset(-8, 8),
              color: Colors.black.withAlpha(128),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              firstColor,
              secondColor,
            ],
          ),
        ),
        alignment: Alignment.centerLeft,
        child: Text("Challenge", style: textSytle),
      ),
    );
  }
}
