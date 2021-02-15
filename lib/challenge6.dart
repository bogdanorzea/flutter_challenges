import 'package:flutter/material.dart';

const colors = [
  Color(0xFF2257A3),
  Color(0xFF2E22A3),
  Color(0xFF6E22A3),
  Color(0xFFA32296),
  Color(0xFFA32357),
  Color(0xFFA32D22)
];

class Challenge6 extends StatelessWidget {
  const Challenge6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Challenge 6")),
      body: _RecursiveCircle(index: 0),
    );
  }
}

class _RecursiveCircle extends StatelessWidget {
  const _RecursiveCircle({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    const diameter = 100.0;
    const offset = 50.0;

    if (index < colors.length) {
      return Container(
        width: diameter,
        height: diameter,
        decoration: BoxDecoration(
          color: colors[index],
          borderRadius: BorderRadius.circular(diameter / 2),
        ),
        child: Transform.translate(
          offset: Offset(offset, offset),
          child: _RecursiveCircle(index: index + 1),
        ),
      );
    }

    return Container();
  }
}
