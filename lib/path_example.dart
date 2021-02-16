import 'package:flutter/material.dart';

class PathExample extends StatelessWidget {
  const PathExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Path example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: CustomPaint(
          size: Size.infinite,
          painter: MyCustomPainter(),
        ),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.redAccent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final h = size.height;
    final w = size.width;

    Path path = Path()
      ..moveTo(0, h / 2)
      ..quadraticBezierTo(w / 2, h, w, h / 2)
      ..lineTo(w, 0)
      ..cubicTo(w / 2, 0, w / 5, h / 5, w / 3, h / 3)
      ..close()
      ..addRect(Rect.fromLTWH(w / 3, h / 3, w / 6, h / 6))
      ..addPolygon([
        Offset.zero,
        Offset(100, 100),
        Offset(233, 122),
        Offset(w / 2, h / 2),
      ], false);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) => true;
}
