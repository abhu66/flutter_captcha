import 'package:flutter/material.dart';

import 'models/captcha_char.dart';
import 'models/captcha_line.dart';

class CaptchaPainter extends CustomPainter {
  final List<CaptchaChar> characters;
  final List<CaptchaLine> lines;

  CaptchaPainter(this.characters, this.lines);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    for (final line in lines) {
      paint.color = line.color;
      canvas.drawLine(line.start, line.end, paint);
    }

    double x = 10;

    for (final char in characters) {
      final textPainter = TextPainter(
        text: TextSpan(
          text: char.char,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: char.color,
          ),
        ),
        textDirection: TextDirection.ltr,
      );

      textPainter.layout();

      canvas.save();
      canvas.translate(x, char.yOffset);
      canvas.rotate(char.rotation);
      textPainter.paint(canvas, Offset.zero);
      canvas.restore();

      x += textPainter.width + 5;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
