import 'package:flutter/material.dart';
import 'package:flutter_challenges/challenge1.dart';

void main() {
  runApp(MyApp());
}

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
              ListTile(
                title: Text('Challenge 1'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.of(context).pushNamed('/challenge1');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
