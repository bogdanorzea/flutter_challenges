import 'package:flutter/material.dart';

class Challenge1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Colors.orange;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text("Challenge 1")),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: color, width: 10),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'H',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyText1.copyWith(color: color, fontSize: 100),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
