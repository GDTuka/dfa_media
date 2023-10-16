// ignore_for_file: deprecated_member_use

part of 'theme.dart';

ThemeData materialThemeFromAppTheme(AppThemeData theme) => ThemeData.from(
      textTheme: theme.textTheme,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        background: theme.bg.primary,
        error: theme.text.red,
        primary: theme.main.primary,
        secondary: theme.main.primary,
        tertiary: theme.text.primary,
        onSecondary: theme.bg.primary,
        onError: theme.bg.primary,
        surface: theme.bg.secondary,
        onPrimary: theme.bg.primary,
        onSurface: theme.main.primary,
        onBackground: theme.main.primary,
      ),
    ).copyWith(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: theme.bg.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.bg.primary,
        foregroundColor: theme.text.primary,
        centerTitle: true,
        titleTextStyle: theme.textTheme.headline3,
      ),
    );

CupertinoThemeData cupertinoThemeFromAppTheme(AppThemeData theme) => MaterialBasedCupertinoThemeData(materialTheme: materialThemeFromAppTheme(theme)).copyWith(
      scaffoldBackgroundColor: theme.bg.primary,
    );

class AppThemeData {
  AppThemeData({
    required this.main,
    required this.bg,
    required this.text,
  });

  factory AppThemeData.light() => AppThemeData(
        main: MainColors.light(),
        bg: BackgroundColors.light(),
        text: TextColors.light(),
      );

  final MainColors main;
  final BackgroundColors bg;
  final TextColors text;

  TextStyle create({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
    double? figmaHeight,
  }) {
    final height = (figmaHeight ?? fontSize) / fontSize;
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? text.primary,
      height: height,
    );
  }

  /*Text styles for body*/
  /// Body 1
  TextStyle get h1 => create(
        fontSize: 26,
        figmaHeight: 24,
        fontWeight: FontWeight.w800,
      );

  TextStyle get h2 => create(
        fontSize: 17,
        figmaHeight: 16,
        fontWeight: FontWeight.w700,
      );

  TextStyle get s1 => create(
        fontSize: 17,
        figmaHeight: 16,
        fontWeight: FontWeight.w500,
      );

  TextStyle get s2 => create(
        fontSize: 13,
        figmaHeight: 15,
        fontWeight: FontWeight.w700,
      );

  TextStyle get c1 => create(
        fontSize: 12,
        figmaHeight: 8,
        fontWeight: FontWeight.w400,
      );

  TextTheme get textTheme => TextTheme(
        headline1: h1,
        headline2: h2,
        subtitle1: s1,
        subtitle2: s2,
        caption: c1,
      );
}
