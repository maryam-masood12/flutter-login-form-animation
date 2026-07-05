
import 'dart:math';

import 'package:flutter/material.dart';

class RingPainter_3 extends CustomPainter {
  final double value;

  RingPainter_3(this.value);

  @override
  void paint(Canvas canvas, Size size) {
   
       

    Paint ringPaint_3 = Paint()
  ..style = PaintingStyle.fill
..color =  const Color.fromARGB(255, 7, 252, 252).withOpacity(0.4)
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 8;
    

     canvas.save();
    canvas.translate(size.width / 2, size.height / 2);
      canvas.rotate(value);

      for (int i = 0; i < 10; i++) {
    canvas.drawLine(
      const Offset(0, -220),
      const Offset(0, 0),
      ringPaint_3,
    );
    canvas.rotate(2 * pi / 62);
  
    }

    canvas.restore();
  

  }

  @override
  bool shouldRepaint(covariant RingPainter_3 oldDelegate) {
    return true;
  }
}