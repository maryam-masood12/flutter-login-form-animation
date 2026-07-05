import 'dart:math';

import 'package:flutter/material.dart';

class RingPainter extends CustomPainter {
  final double value;

  RingPainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
   
       

    Paint ringPaint = Paint()
  ..style = PaintingStyle.fill
..color =  const Color.fromARGB(255, 7, 252, 252)
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 8;
    

     canvas.save();
    canvas.translate(size.width / 2, size.height / 2);
      canvas.rotate(value);

      for (int i = 0; i < 3; i++) {
    canvas.drawLine(
      const Offset(0, -220),
      const Offset(0, 0),
      ringPaint,
    );
    canvas.rotate(2 * pi / 62);
  
    }

    canvas.restore();


  }

  @override
  bool shouldRepaint(covariant RingPainter oldDelegate) {
    return true;
  }
}