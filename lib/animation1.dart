import 'package:flutter/material.dart';

class Animation1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Implicit animations')),
      body: Center(child: _GrowingContainer()),
    );
  }
}

class _GrowingContainer extends StatefulWidget {
  @override
  _GrowingContainerState createState() => _GrowingContainerState();
}

class _GrowingContainerState extends State<_GrowingContainer> {
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          decoration: BoxDecoration(
            color: _isBig ? Colors.blueGrey : Colors.blueGrey[800],
            boxShadow: [
              if (_isBig)
                BoxShadow(
                  color: Colors.black.withAlpha(128),
                  offset: Offset(10, 10),
                  blurRadius: 20,
                )
            ],
            borderRadius: BorderRadius.circular(_isBig ? 20.0 : 0.0),
          ),
          height: _isBig ? 300.0 : 200.0,
          width: _isBig ? 300.0 : 200.0,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOutCubic,
        ),
        TextButton(onPressed: onButtonPress, child: Text('Toggle state')),
      ],
    );
  }

  void onButtonPress() {
    setState(() {
      _isBig = !_isBig;
    });
  }
}
