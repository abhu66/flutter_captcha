import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:omjo_captcha/omjo_captcha.dart';


void main() {
  test('CaptchaChar should store values correctly', () {
    final char = CaptchaChar(
      char: 'A',
      color: Colors.red,
      yOffset: 12.0,
      rotation: 0.2,
    );

    expect(char.char, 'A');
    expect(char.color, Colors.red);
    expect(char.yOffset, 12.0);
    expect(char.rotation, 0.2);
  });

  test('CaptchaLine should store values correctly', () {
    final line = CaptchaLine(
      start: Offset(0, 0),
      end: Offset(100, 100),
      color: Colors.blue,
    );

    expect(line.start, const Offset(0, 0));
    expect(line.end, const Offset(100, 100));
    expect(line.color, Colors.blue);
  });
}
