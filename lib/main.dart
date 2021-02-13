import 'package:flutter/material.dart';

import 'challenge1.dart';
import 'challenge2.dart';
import 'challenge3.dart';
import 'challenge4.dart';

void main() {
  runApp(MyApp());
}

const screens = {
  "Challenge 1": "/challenge1",
  "Challenge 2": "/challenge2",
  "Challenge 3": "/challenge3",
  "Challenge 4": "/challenge4",
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenges',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: {
        '/challenge1': (context) => Challenge1(),
        '/challenge2': (context) => Challenge2(),
        '/challenge3': (context) => Challenge3(),
        '/challenge4': (context) => Challenge4(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Challenges")),
      body: ListView(
        children: [
          ...ListTile.divideTiles(
            context: context,
            tiles: [
              for (final screen in screens.entries)
                ListTile(
                  title: Text(screen.key),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).pushNamed(screen.value);
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}
