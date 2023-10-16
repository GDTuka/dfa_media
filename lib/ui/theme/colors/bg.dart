part of '../theme.dart';

class BackgroundColors {
  BackgroundColors({
    required this.primary,
    required this.secondary,
    required this.shimmerFirstColor,
    required this.shimmerSecondColor,
  });

  factory BackgroundColors.light() => BackgroundColors(
        primary: const Color(0xFFFFFFFF),
        secondary: const Color(0xFFF7FAF9),
        shimmerFirstColor: const Color(0xFF090B0E),
        shimmerSecondColor: const Color(0xFF616872),
      );

  Color primary;
  Color secondary;
  Color shimmerFirstColor;
  Color shimmerSecondColor;
}
