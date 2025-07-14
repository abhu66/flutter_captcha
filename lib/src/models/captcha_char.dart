import 'package:flutter/material.dart';

/// Represents a single character in the CAPTCHA with styling and position data.
class CaptchaChar {
  /// The character to be rendered.
  final String char;

  /// The color of the character.
  final Color color;

  /// The vertical offset for placement variation.
  final double yOffset;

  /// The rotation angle of the character.
  final double rotation;

  CaptchaChar({
    required this.char,
    required this.color,
    required this.yOffset,
    required this.rotation,
  });
}
