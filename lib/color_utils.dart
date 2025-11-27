import 'dart:math';

import 'package:flutter/material.dart';

class ColorUtils {
  /// Converts a hex string (e.g., "#FFFFFF" or "FFFFFF") to a [Color].
  /// Optionally supports alpha values (e.g., "#80FFFFFF" or "80FFFFFF").
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write('ff'); // Default alpha value (fully opaque)
    }
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Converts a [Color] to a hex string (e.g., "#FFFFFF").
  /// Includes alpha by default; pass `includeAlpha: false` to omit it.
  static String toHex(Color color, {bool includeAlpha = true}) {
    final alpha = includeAlpha
        ? color.alpha.toRadixString(16).padLeft(2, '0')
        : '';
    final rgb = color.value.toRadixString(16).substring(2).toUpperCase();
    return '#$alpha$rgb';
  }

  /// Returns a random [Color].
  static Color random() {
    final random = Random();
    final r = random.nextInt(256);
    final g = random.nextInt(256);
    final b = random.nextInt(256);
    return Color.fromRGBO(r, g, b, 1);
  }
}

extension ColorExtensions on Color {
  Color rgba(int r, int g, int b, double a) {
    return Color.fromRGBO(r, g, b, a);
  }

  Color fromHex(String hex) {
    return ColorUtils.fromHex(hex);
  }

  String toHex(Color color) {
    return ColorUtils.toHex(color);
  }

  /// Returns a darker version of this color.
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  /// Returns a lighter version of this color.
  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness(
      (hsl.lightness + amount).clamp(0.0, 1.0),
    );
    return hslLight.toColor();
  }
}
