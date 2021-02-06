import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DraggableLinePage extends StatelessWidget {
  const DraggableLinePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DraggableLine(),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(10, 10);
    final p2 = Offset(60, 10); // line with a width of 50
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

final linePainter = LinePainter();

class DraggableLine extends StatelessWidget {
  const DraggableLine({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
        feedback: CustomPaint(painter: linePainter),
        data: "SomeDateToBeDragged",
        child: Container(
            // container with same size of line
            // transform: Matrix4.rotationZ(pi / 2), // can be rotated using the transform property
            width: 50,
            height: 14,
            child: CustomPaint(painter: linePainter)));
  }
}
