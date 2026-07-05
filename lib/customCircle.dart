import 'dart:math';

import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
     final radius = size.width * 0.43;
    final  angle = 2 * pi / 62;
   
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..color = Colors.white.withOpacity(0.3);

       Paint linePaint = Paint()
      ..strokeWidth = 9
      ..strokeCap = StrokeCap.round
      ..color =  const Color.fromARGB(255, 7, 252, 252).withOpacity(0.15);

       

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius,
      paint,
    );

     canvas.save();
    canvas.translate(size.width / 2, size.height / 2);

     for (int i = 0; i < 62; i++) {
      canvas.drawLine(
        Offset(0, -220), 
        Offset(0, 0), 
        linePaint,
      );

      canvas.rotate(angle);
    }

    canvas.restore();
  
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}