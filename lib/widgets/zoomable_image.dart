import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ZoomableImage extends StatelessWidget {
  final String imagePath;

  const ZoomableImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      minScale: 1,
      maxScale: 4,
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
        width: Get.width,
      ),
    );
  }
}
