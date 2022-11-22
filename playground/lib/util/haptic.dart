import 'package:flutter/services.dart';

class Haptic {
  static void light() => HapticFeedback.lightImpact();
  static void medium() => HapticFeedback.mediumImpact();
  static void heavy() => HapticFeedback.heavyImpact();
  static void vibrate() => HapticFeedback.vibrate();
}
