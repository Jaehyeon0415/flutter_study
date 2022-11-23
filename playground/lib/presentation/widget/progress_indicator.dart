import 'package:flutter/material.dart';
import 'package:playground/res/color.dart';

class UiCircleIndicator extends StatelessWidget {
  const UiCircleIndicator({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 30,
        height: 30,
        child: CircularProgressIndicator(color: color ?? UiColor.black),
      );
}
