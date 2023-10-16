part of '../theme.dart';

extension TextExtension on TextStyle {
  TextStyle get primary => copyWith(color: AppTheme.of(App.navigatorState.context).main.primary);
  TextStyle get red => copyWith(color: AppTheme.of(App.navigatorState.context).text.red);
  TextStyle get bgSecondary => copyWith(color: AppTheme.of(App.navigatorState.context).bg.secondary);
}
