import 'dart:math';
import 'package:flutter/material.dart';

class JarnaPainter extends CustomPainter {
  final double progress;
  final bool isMilk;

  JarnaPainter({
    required this.progress,
    required this.isMilk,
  });

  final Random _rand = Random();

  @override
  void paint(Canvas canvas, Size size) {
    final baseColor =
    isMilk ? Colors.white : Colors.lightBlueAccent;

    // gradient paint for depth
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..shader = LinearGradient(
        colors: [
          baseColor.withOpacity(0.9),
          baseColor.withOpacity(0.4),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final centerX =
    isMilk ? size.width * 0.65 : size.width * 0.35;

    // number of spray particles
    final int drops = 45;

    for (int i = 0; i < drops; i++) {
      final double spread = 110 * progress;

      final startX =
          centerX + _rand.nextDouble() * 10 - 5;

      final endX =
          centerX + _rand.nextDouble() * spread - spread / 2;

      paint.strokeWidth = 1 + _rand.nextDouble() * 3;

      final path = Path();
      path.moveTo(startX, 0);

      // curved gravity arc
      path.quadraticBezierTo(
        centerX +
            _rand.nextDouble() * 40 -
            20,
        size.height * 0.3,
        endX,
        size.height * progress,
      );

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
