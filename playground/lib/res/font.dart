import 'package:flutter/material.dart';
import 'package:playground/res/color.dart';

class Font {
  static const String notoSansKR = 'NotoSansKR';
}

class FontSizes {
  static double get s10 => 10;
  static double get s12 => 12;
  static double get s14 => 14;
  static double get s16 => 16;
  static double get s18 => 18;
  static double get s20 => 20;
  static double get s24 => 24;
  static double get s28 => 28;
  static double get s32 => 32;
}

class TextStyles {
  // Base textStyle
  static TextStyle notoSansKR = TextStyle(
    fontFamily: Font.notoSansKR,
    fontSize: FontSizes.s16,
    fontWeight: FontWeight.w400,
    color: UiColor.black,
    height: 1,
  );
}
