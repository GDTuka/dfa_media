part of '../theme.dart';

class TextColors {
  TextColors({
    required this.primary,
    required this.red,
    required this.secondary,
    required this.tetryary,
  });

  Color primary;
  Color red;
  Color secondary;
  Color tetryary;
  factory TextColors.light() => TextColors(
        primary: const Color(0xFF051A15),
        red: Colors.red,
        secondary: const Color(0xFF233833),
        tetryary: Colors.black,
      );
}
