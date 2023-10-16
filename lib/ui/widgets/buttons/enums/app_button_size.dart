enum AppButtonSize {
  small,
  medium,
  big;

  double getButtonVertical() {
    switch (this) {
      case AppButtonSize.small:
        return 7;
      case AppButtonSize.medium:
        return 7;
      case AppButtonSize.big:
        return 14;
    }
  }
}
