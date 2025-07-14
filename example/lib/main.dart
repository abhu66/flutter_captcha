import 'package:flutter/material.dart';
import 'package:omjo_captcha/omjo_captcha.dart';

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
  late CaptchaController controller;

  @override
  void initState() {
    super.initState();
    controller = CaptchaController();
  }

  void _refreshCaptcha() {
    setState(() {
      controller.refreshCaptcha();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomPaint(
          size: const Size(150, 50),
          painter: CaptchaPainter(controller.captchaChars, controller.captchaLines),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _refreshCaptcha,
          child: const Text('Refresh Captcha'),
        ),
      ],
    );
  }
}