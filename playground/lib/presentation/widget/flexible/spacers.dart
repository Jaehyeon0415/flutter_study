import 'package:flutter/material.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/dimension.dart';

class VSpace extends StatelessWidget {
  const VSpace(this.size, {Key? key}) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) => SizedBox(height: size);

  static VSpace get i4 => VSpace(Insets.i4);
  static VSpace get i8 => VSpace(Insets.i8);
  static VSpace get i12 => VSpace(Insets.i12);
  static VSpace get i16 => VSpace(Insets.i16);
  static VSpace get i20 => VSpace(Insets.i20);
  static VSpace get i24 => VSpace(Insets.i24);
  static VSpace get i32 => VSpace(Insets.i32);
}

class HSpace extends StatelessWidget {
  const HSpace(this.size, {Key? key}) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) => SizedBox(width: size);

  static HSpace get i4 => HSpace(Insets.i4);
  static HSpace get i8 => HSpace(Insets.i8);
  static HSpace get i12 => HSpace(Insets.i12);
  static HSpace get i16 => HSpace(Insets.i16);
  static HSpace get i20 => HSpace(Insets.i20);
  static HSpace get i24 => HSpace(Insets.i24);
  static HSpace get i32 => HSpace(Insets.i32);
}

class HDivider extends StatelessWidget {
  const HDivider(this.size, {Key? key, this.color}) : super(key: key);
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) =>
      Divider(height: size, thickness: size, color: color ?? UiColor.divider);
}

class VDivider extends StatelessWidget {
  const VDivider(this.size, {Key? key, this.color}) : super(key: key);
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) => VerticalDivider(
      width: size, thickness: size, color: color ?? UiColor.divider);
}
