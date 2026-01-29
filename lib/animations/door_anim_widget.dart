import 'package:flutter/material.dart';

class DoorWidget extends StatelessWidget {
  final bool open;
  final String imagePath;
  final double height;
  final BorderRadius borderRadius;

  const DoorWidget({
    super.key,
    required this.open,
    required this.imagePath,
    this.height = 180,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: 0,
        end: open ? 1 : 0,
      ),
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Transform(
          alignment: Alignment.centerLeft, // 🔥 door hinge
          transform: Matrix4.identity()..scale(value, 1),
          child: child,
        );
      },
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          imagePath,
          height: height,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
