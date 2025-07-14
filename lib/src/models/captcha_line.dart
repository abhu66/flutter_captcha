import 'package:flutter/material.dart';

/// Represents a visual noise line in the CAPTCHA image.
class CaptchaLine {
  /// Starting point of the line.
  final Offset start;

  /// Ending point of the line.
  final Offset end;

  /// Color of the noise line.
  final Color color;

  CaptchaLine({required this.start, required this.end, required this.color});
}
