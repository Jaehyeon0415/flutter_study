import 'package:flutter/material.dart';

class Insets {
  static double get i4 => 4;
  static double get i8 => 8;
  static double get i12 => 12;
  static double get i16 => 16;
  static double get i20 => 20;
  static double get i24 => 24;
  static double get i32 => 32;
}

class Corner {
  static const double r8 = 8;
  static Radius r8Radius = const Radius.circular(r8);
  static BorderRadius r8Border = BorderRadius.all(r8Radius);

  static const double r11 = 11;
  static Radius r11Radius = const Radius.circular(r11);
  static BorderRadius r11Border = BorderRadius.all(r11Radius);
}
