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