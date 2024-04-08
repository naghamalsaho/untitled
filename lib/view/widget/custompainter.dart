import 'package:flutter/material.dart';

class ZigzagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, 0);

    final double midPoint = size.width / 2;

    // الارتفاع العمودي للمنحنى
    final double curveHeight = 20;

    // رسم التعريجة الأولى
    path.quadraticBezierTo(midPoint / 2, curveHeight, midPoint, 0);
    // رسم التعريجة الثانية
    path.quadraticBezierTo(
        midPoint + (midPoint / 2), -curveHeight, size.width, 0);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
