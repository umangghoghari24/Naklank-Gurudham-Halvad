import 'package:flutter/material.dart';

class JarnaPainter extends CustomPainter {
  final double progress;
  final bool isMilk;

  JarnaPainter({required this.progress, required this.isMilk});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 30
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
    ..color = isMilk
          ? Colors.white.withOpacity(0.9)
          : Colors.blueAccent.withOpacity(0.8);

    final path = Path();
    path.moveTo(size.width / 2, 0);

    path.cubicTo(
      size.width / 2 + 12 * (1 - progress),
      size.height * 0.3,
      size.width / 2 - 12 * progress,
      size.height * 0.6,
      size.width / 2,
      size.height,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_) => true;
}
