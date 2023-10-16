part of '../theme.dart';

class BackgroundColors {
  BackgroundColors({
    required this.primary,
    required this.secondary,
  });

  factory BackgroundColors.light() => BackgroundColors(
        primary: const Color(0xFFFFFFFF),
        secondary: const Color(0xFFF7FAF9),
      );

  Color primary;
  Color secondary;
}
