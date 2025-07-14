import 'dart:math';
import 'package:flutter/material.dart';
import 'models/captcha_char.dart';
import 'models/captcha_line.dart';

class CaptchaController {
  String captchaText = '';
  List<CaptchaChar> captchaChars = [];
  List<CaptchaLine> captchaLines = [];

  final int width;
  final int height;

  CaptchaController({this.width = 120, this.height = 50}) {
    refreshCaptcha();
  }

  void refreshCaptcha({int length = 5}) {
    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
    final random = Random();

    captchaText = List.generate(length, (_) => chars[random.nextInt(chars.length)]).join();

    captchaChars = captchaText.split('').map((char) {
      return CaptchaChar(
        char: char,
        color: _randomReadableColor(),
        yOffset: 10 + random.nextDouble() * 10,
        rotation: (random.nextDouble() - 0.5) * 0.3,
      );
    }).toList();

    captchaLines = List.generate(5, (_) {
      return CaptchaLine(
        start: Offset(random.nextDouble() * width, random.nextDouble() * height),
        end: Offset(random.nextDouble() * width, random.nextDouble() * height),
        color: _randomReadableColor(),
      );
    });
  }

  bool validateCaptcha(String input) {
    return input.toUpperCase() == captchaText;
  }

  Color _randomReadableColor() {
    final r = 100 + Random().nextInt(156);
    final g = 100 + Random().nextInt(156);
    final b = 100 + Random().nextInt(156);
    return Color.fromARGB(255, r, g, b);
  }
}