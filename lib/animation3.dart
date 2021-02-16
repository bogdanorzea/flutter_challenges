import 'package:flutter/material.dart';

class Animation3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Build-in explicit animations')),
      body: Center(child: _SpinningStar()),
    );
  }
}

class _SpinningStar extends StatefulWidget {
  @override
  _SpinningStarState createState() => _SpinningStarState();
}

class _SpinningStarState extends State<_SpinningStar> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  String get _buttonText => _animationController.isAnimating ? 'Pause animation' : 'Resume animation';

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RotationTransition(
          turns: _animationController,
          child: Icon(
            Icons.star_border_rounded,
            size: 128.0,
            color: Colors.amber,
          ),
        ),
        TextButton(onPressed: onButtonPress, child: Text(_buttonText))
      ],
    );
  }

  void onButtonPress() {
    if (_animationController.isAnimating) {
      _animationController.stop();
    } else {
      _animationController.repeat();
    }

    setState(() {});
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }
}
