import 'dart:math';

import 'package:flutter/material.dart';

class Animation4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom explicit animations')),
      body: _UFO(),
    );
  }
}

class _UFO extends StatefulWidget {
  const _UFO({Key key}) : super(key: key);

  @override
  _UFOState createState() => _UFOState();
}

class _UFOState extends State<_UFO> with SingleTickerProviderStateMixin {
  AnimationController _animation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                '🐄',
                style: TextStyle(fontSize: 48),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 88),
            //   child: AnimatedBuilder(
            //     animation: _animation,
            //     builder: (_, __) {
            //       return ClipPath(
            //         clipper: const BeamClipper(),
            //         child: Container(
            //           decoration: BoxDecoration(
            //             gradient: LinearGradient(
            //               begin: Alignment.topCenter,
            //               end: Alignment.bottomCenter,
            //               colors: [
            //                 Colors.amber[600],
            //                 Colors.amber[400].withAlpha(256),
            //               ],
            //               stops: [0, _animation.value],
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 88),
              child: BeamTransition(animation: _animation),
            ),
            Transform.rotate(
              angle: pi / 10,
              child: Text(
                '🛸',
                style: TextStyle(fontSize: 128),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animation.dispose();

    super.dispose();
  }
}

class BeamClipper extends CustomClipper<Path> {
  const BeamClipper();

  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;

    return Path()
      ..moveTo(w / 2, 0)
      ..lineTo(w * 0.7, h)
      ..lineTo(w * 0.3, h)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class BeamTransition extends AnimatedWidget {
  const BeamTransition({
    Key key,
    @required Animation<double> animation,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable;

    return ClipPath(
      clipper: const BeamClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.amber[600],
              Colors.amber[400].withAlpha(256),
            ],
            stops: [0, animation.value],
          ),
        ),
      ),
    );
  }
}
