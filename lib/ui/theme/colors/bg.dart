part of '../theme.dart';

class BackgroundColors {
  BackgroundColors({
    required this.primary,
    required this.secondary,
    required this.shimmerFirstColor,
    required this.shimmerSecondColor,
    required this.tetryary,
  });

  factory BackgroundColors.light() => BackgroundColors(
        primary: const Color(0xFFFFFFFF),
        secondary: const Color(0xFFF7FAF9),
        shimmerFirstColor: const Color(0xFF090B0E),
        shimmerSecondColor: const Color(0xFF616872),
        tetryary: const Color(0xFF233833),
      );

  Color primary;
  Color secondary;
  Color tetryary;
  Color shimmerFirstColor;
  Color shimmerSecondColor;
}
