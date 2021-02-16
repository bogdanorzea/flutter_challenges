import 'dart:math';

import 'package:flutter/material.dart';

class Animation2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom implicit animations')),
      body: Center(child: _SpinningHeart()),
    );
  }
}

class _SpinningHeart extends StatefulWidget {
  @override
  _SpinningHeartState createState() => _SpinningHeartState();
}

class _SpinningHeartState extends State<_SpinningHeart> {
  double _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TweenAnimationBuilder(
          child: const Icon(
            Icons.favorite,
            color: Colors.redAccent,
            size: 128.0,
          ),
          tween: Tween<double>(begin: 0, end: _sliderValue),
          duration: Duration(milliseconds: 200),
          builder: (_, double tweenValue, Widget child) {
            return Transform.scale(
              scale: tweenValue + 0.5,
              child: Transform.rotate(
                angle: tweenValue * 2 * pi,
                child: child,
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          child: Slider.adaptive(
            value: _sliderValue,
            divisions: 20,
            onChanged: (double newValue) {
              setState(() {
                _sliderValue = newValue;
              });
            },
          ),
        ),
      ],
    );
  }
}
