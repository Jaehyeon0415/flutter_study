import 'package:flutter/material.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/dimension.dart';
import 'package:playground/res/font.dart';

class UiTextButton extends StatelessWidget {
  const UiTextButton(
    this.text, {
    Key? key,
    this.textColor,
    this.backgroundColor,
    this.margin,
    this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 8),
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry padding;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        height: kToolbarHeight,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor ?? UiColor.primary,
          borderRadius: Corner.r11Border,
        ),
        child: UiText(
          text,
          style: TextStyles.button.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class UiTextOutlineButton extends StatelessWidget {
  const UiTextOutlineButton(
    this.text, {
    Key? key,
    this.textColor,
    this.borderColor,
    this.margin,
    this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 8),
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final Color? borderColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry padding;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        height: kToolbarHeight,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: Corner.r11Border,
          border: Border.all(color: borderColor ?? UiColor.primary),
        ),
        child: UiText(
          text,
          style: TextStyles.button.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
