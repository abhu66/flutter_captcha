import 'dart:math';
import 'dart:ui';

import 'package:omjo_captcha/omjo_captcha.dart';

/// A controller class to manage CAPTCHA generation, validation, and state.
///
/// This class is independent of any state management solution like GetX, making it
/// reusable across different architectures.
class CaptchaController {
  /// Current CAPTCHA text value.
  String captchaText = '';

  /// The list of styled characters for rendering.
  List<CaptchaChar> captchaChars = [];

  /// The list of noise lines to render.
  List<CaptchaLine> captchaLines = [];

  /// Validates the user input against the current CAPTCHA.
  bool validateCaptcha(String input) {
    return input.toUpperCase() == captchaText;
  }

  /// Refreshes and regenerates the CAPTCHA text, characters, and noise lines.
  void refreshCaptcha({int length = 5}) {
    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
    final random = Random();
    final text = List.generate(
      length,
      (_) => chars[random.nextInt(chars.length)],
    ).join();

    captchaText = text;

    captchaChars = text.split('').map((char) {
      return CaptchaChar(
        char: char,
        color: _randomReadableColor(),
        yOffset: 10 + random.nextDouble() * 10,
        rotation: (random.nextDouble() - 0.5) * 0.3,
      );
    }).toList();

    captchaLines = List.generate(5, (_) {
      return CaptchaLine(
        start: Offset(random.nextDouble() * 120, random.nextDouble() * 50),
        end: Offset(random.nextDouble() * 120, random.nextDouble() * 50),
        color: _randomReadableColor(),
      );
    });
  }

  /// Generates a random readable color.
  Color _randomReadableColor() {
    final r = 100 + Random().nextInt(156);
    final g = 100 + Random().nextInt(156);
    final b = 100 + Random().nextInt(156);
    return Color.fromARGB(255, r, g, b);
  }
}
