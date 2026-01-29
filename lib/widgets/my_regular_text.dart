// import 'package:flutter/material.dart';
//
// import '../utils/styles.dart';
//
// class MyRegularText extends StatelessWidget {
//   final String label;
//   final Color? color;
//   final TextAlign? align;
//   final int? maxLines;
//   final TextOverflow? overflow;
//   final TextStyle? style;
//   final bool? isStar;
//
//   const MyRegularText({
//     super.key,
//     required this.label,
//     this.color,
//     this.align = TextAlign.center,
//     this.maxLines,
//     this.overflow = TextOverflow.ellipsis,
//     this.style,
//     this.isStar = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     /*  ThemeData theme = Get.theme; */
//     return label.isNotEmpty
//         ? isStar == true
//         ? RichText(
//       textAlign: align ?? TextAlign.start,
//       maxLines: maxLines ?? 1,
//       softWrap: true,
//       //minFontSize: 12,
//       overflow: overflow ?? TextOverflow.clip,
//       text: TextSpan(
//         children: [
//           TextSpan(
//             text: label.isNotEmpty ? label : '',
//             style: style ?? Styles.black16_14W400,
//           ),
//           TextSpan(
//             text: "*",
//             style: Styles.red16W600,
//           )
//         ],
//       ),
//     )
//         : Text(
//       label.isNotEmpty ? label : '',
//       textAlign: align ?? TextAlign.start,
//       maxLines: maxLines ?? 1,
//       softWrap: true,
//       //minFontSize: 12,
//       overflow: overflow,
//       style: style ?? Styles.black16_14W400,
//     )
//         : const Text('');
//   }
// }

import 'package:flutter/material.dart';

class MyRegularText extends StatelessWidget {
  final String label;
  final TextStyle? style;
  final TextAlign? align;

  const MyRegularText({
    super.key,
    required this.label,
    this.style,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: align ?? TextAlign.start,
      style: style?.copyWith(
        color: style?.color ?? Theme.of(context).textTheme.bodyMedium?.color,
      ) ??
          Theme.of(context).textTheme.bodyMedium,
    );
  }
}
