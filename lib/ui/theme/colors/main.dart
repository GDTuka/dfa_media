part of '../theme.dart';

class MainColors {
  MainColors({
    required this.primary,
    required this.lockerOff,
    required this.switchOff,
  });

  factory MainColors.light() => MainColors(
        primary: const Color(0xFF2A6155),
        lockerOff: const Color(0xFFC7772E),
        switchOff: const Color(0xFFD2DBD8),
      );

  Color primary;
  Color lockerOff;
  Color switchOff;
}
