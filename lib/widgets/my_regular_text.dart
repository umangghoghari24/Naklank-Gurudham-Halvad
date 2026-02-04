import 'package:flutter/material.dart';

class MyRegularText extends StatelessWidget {
  final String label;
  final TextStyle? style;
  final TextAlign? align;
  final int? maxLines;
  final TextOverflow? overflow;

  const MyRegularText({
    super.key,
    required this.label,
    this.style,
    this.align,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: align ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: style?.copyWith(
        color: style?.color ??
            Theme.of(context).textTheme.bodyMedium?.color,
      ) ??
          Theme.of(context).textTheme.bodyMedium,
    );
  }
}
