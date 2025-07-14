import 'package:flutter/material.dart';
import 'package:flutter_captcha/flutter_captcha.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Captcha Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Captcha Demo')),
        body: const Center(child: CaptchaPreview()),
      ),
    );
  }
}

class CaptchaPreview extends StatefulWidget {
  const CaptchaPreview({super.key});

  @override
  State<CaptchaPreview> createState() => _CaptchaPreviewState();
}

class _CaptchaPreviewState extends State<CaptchaPreview> {
  late List<CaptchaChar> characters;
  late List<CaptchaLine> lines;

  @override
  void initState() {
    super.initState();
    _generateCaptcha();
  }

  void _generateCaptcha() {
    final random = Random();
    const text = 'A7B2X';

    characters = text.split('').map((char) {
      return CaptchaChar(
        char: char,
        color: _randomColor(random),
        yOffset: 10 + random.nextDouble() * 10,
        rotation: (random.nextDouble() - 0.5) * 0.3,
      );
    }).toList();

    lines = List.generate(5, (_) {
      return CaptchaLine(
        start: Offset(random.nextDouble() * 120, random.nextDouble() * 50),
        end: Offset(random.nextDouble() * 120, random.nextDouble() * 50),
        color: _randomColor(random),
      );
    });

    setState(() {});
  }

  Color _randomColor(Random random) {
    return Color.fromARGB(
      255,
      100 + random.nextInt(156),
      100 + random.nextInt(156),
      100 + random.nextInt(156),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomPaint(
          size: const Size(150, 50),
          painter: CaptchaPainter(characters, lines),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _generateCaptcha,
          child: const Text('Refresh Captcha'),
        ),
      ],
    );
  }
}
