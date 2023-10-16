part of '../theme.dart';

class MainColors {
  MainColors({
    required this.primary,
    required this.lockerOff,
  });

  factory MainColors.light() => MainColors(
        primary: const Color(0xFF2A6155),
        lockerOff: const Color(0xFFC7772E),
      );

  Color primary;
  Color lockerOff;
}
