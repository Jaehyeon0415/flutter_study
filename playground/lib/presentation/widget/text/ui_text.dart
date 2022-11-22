import 'package:flutter/material.dart';
import 'package:playground/res/font.dart';

class UiText extends StatelessWidget {
  const UiText(
    this.text, {
    super.key,
    this.style,
    this.maxLines = 1,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
  });

  final String text;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? TextStyles.notoSansKR,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
