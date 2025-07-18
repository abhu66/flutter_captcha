## 0.0.10 - 2025-07-18

### Added
- Added **status badges** at the top of `README.md` for improved visibility and pub.dev integration:
  - Pub version: ![Pub Version](https://img.shields.io/pub/v/omjo_captcha)
  - License: ![License](https://img.shields.io/pub/license/omjo_captcha)
  - Platform: ![Platform](https://img.shields.io/badge/platform-flutter-blue)

## 0.0.9 - 2025-07-14

### Added
- Added **live demo** hosted on Netlify: [https://omjocaptcha.netlify.app](https://omjocaptcha.netlify.app)
- Linked demo in `README.md` under "Live Demo" section
- Added `documentation:` field in `pubspec.yaml` for better pub.dev integration

### Changed
- Minor visual refactoring of demo layout in `example/lib/main.dart`
- Clarified README phrasing and formatting for international audience

## 0.0.8 - 2025-07-14

### Added
- Added “Support the Project” section in README.md with Buy Me a Coffee link

## 0.0.7 - 2025-07-14

### Changed
- Applied `dart format` to all source files to comply with Dart formatting guidelines.
- Improved pub.dev score by addressing formatting issues.

## 0.0.6 - 2025-07-14

### Added
- Added full Dart documentation comments (`///`) to all public API elements:
    - `CaptchaChar`
    - `CaptchaLine`
    - `CaptchaController`
- Improved pub.dev analysis score by satisfying documentation coverage requirements.

## 0.0.5 - 2025-07-14

### Added
- Introduced `CaptchaController` class for easier and reusable state management.
- Added documentation comments to meet pub.dev API guidelines.

### Changed
- Updated `example/lib/main.dart` to use `CaptchaController` instead of manual character/line generation.
- Improved modularity and reusability for developers not using GetX.

## 0.0.4 - 2025-07-14

### Added
- Added GitHub-hosted screenshot to README.md using URL.

## 0.0.3 - 2025-07-14

### Changed
- Updated the license section in `README.md` to include full name and organization.

## 0.0.1

- Initial release of `omjo_captcha`
- Support for randomized CAPTCHA characters
- Support for disturbance lines
- Stateless drawing using CustomPainter
- Example app included