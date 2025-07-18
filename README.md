# omjo_captcha

[![pub package](https://img.shields.io/pub/v/omjo_captcha.svg)](https://pub.dev/packages/omjo_captcha)

A customizable, client-side CAPTCHA widget for Flutter with randomized colorful characters and noise lines.  
No backend required — perfect for login forms, guestbooks, or simple human verification needs.

---

![Captcha Screenshot](https://raw.githubusercontent.com/abhu66/flutter_captcha/main/screenshots/captcha_preview.png)

---

## ✨ Features

- 🎨 Randomized colored characters
- 🔀 Noise/disturbance lines for bot resistance
- 🔄 Easy CAPTCHA refresh
- ✅ Custom validation logic
- 🚫 Works entirely offline (no server needed)

---

## 🌐 Live Demo

🧪 Try it directly in your browser (no installation needed):  
👉 [https://omjocaptcha.netlify.app](https://omjocaptcha.netlify.app)

---


## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  omjo_captcha: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Usage

Here's a simple example:

```dart
import 'package:flutter/material.dart';
import 'package:omjo_captcha/omjo_captcha.dart';
import 'dart:math';

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
```

---

## 📁 Folder Structure

```
lib/
├── omjo_captcha.dart
└── src/
    ├── captcha_painter.dart
    ├── models/
    │   ├── captcha_char.dart
    │   └── captcha_line.dart
```

---

## 🧪 Example App

Clone this repo and run the example:

```bash
cd example
flutter run
```

---

## 💡 Tips

- You can wrap this CAPTCHA in a `TextFormField` widget for login forms.
- Combine with your auth logic to validate user input against `captchaText`.

---

## 🛠️ Contributing

Contributions are welcome!  
If you found a bug or want a new feature, please open an issue or submit a pull request.

---

## Support the Project

If you find this plugin helpful, consider supporting its development:

- [![Buy Me a Coffee](https://img.shields.io/badge/☕-Buy%20me%20a%20coffee-yellow?logo=buy-me-a-coffee&style=flat-square)](https://buymeacoffee.com/abukhoerula)

Your support is greatly appreciated!

---

## 📄 License

MIT © Abu Khoerul Iskandar Ali (Omjo)  
See [LICENSE](LICENSE) for details.

---

## 🙌 Credits

Built with 💙 using Flutter.
