import 'package:flutter/material.dart';

import 'screens.dart';

void main() {
  runApp(MyApp());
}

const screens = {
  "Challenge 1": "/challenge1",
  "Challenge 2": "/challenge2",
  "Challenge 3": "/challenge3",
  "Challenge 4": "/challenge4",
  "Challenge 5": "/challenge5",
  "Challenge 6": "/challenge6",
  "Path example": "/path",
  "Implicit animations": "/animation1",
  "Custom implicit animations": "/animation2",
  "Build-in explicit animations": "/animation3",
  "Custom explicit animations": "/animation4",
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
        '/challenge1': (_) => Challenge1(),
        '/challenge2': (_) => Challenge2(),
        '/challenge3': (_) => Challenge3(),
        '/challenge4': (_) => Challenge4(),
        '/challenge5': (_) => Challenge5(),
        '/challenge6': (_) => Challenge6(),
        '/path': (_) => PathExample(),
        '/animation1': (_) => Animation1(),
        '/animation2': (_) => Animation2(),
        '/animation3': (_) => Animation3(),
        '/animation4': (_) => Animation4(),
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
