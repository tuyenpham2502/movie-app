import 'package:flutter/material.dart';
import 'package:movie_app/components/materials/app_colors.dart';

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.white  // Set your desired border color
      ..strokeWidth = 2       // Set your desired border width
      ..style = PaintingStyle.stroke;

    const dashWidth = 5;      // Width of each dash
    const dashSpace = 3;      // Space between dashes

    double startY = size.height;
    while (startY > size.height - dashWidth) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(size.width, startY),
        paint,
      );
      startY -= dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
