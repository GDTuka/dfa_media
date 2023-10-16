import 'dart:io';

import 'package:dfa_media/ui/theme/theme.dart';
import 'package:dfa_media/ui/widgets/buttons/enums/app_button_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ButtonTextColor {
  static,
  primary;

  Color textStyle(BuildContext context) {
    switch (this) {
      case ButtonTextColor.static:
        return AppTheme.of(context).text.primary;
      case ButtonTextColor.primary:
        return AppTheme.of(context).text.primary;
    }
  }
}

enum ButtonBackGroundColor {
  primary,
  secondary;

  Color getButtonColor(BuildContext context) {
    final theme = AppTheme.of(context);
    switch (this) {
      case ButtonBackGroundColor.primary:
        return theme.main.primary;
      case ButtonBackGroundColor.secondary:
        return theme.main.lockerOff;
    }
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.isLoading = false,
    this.size = AppButtonSize.small,
    this.horizontalPadding,
    required this.textColor,
    required this.color,
    this.borderColor,
    this.textButton = false,
    this.outLined = false,
  });

  factory AppButton.primary({
    required Widget child,
    required VoidCallback? onPressed,
    bool isLoading = false,
    AppButtonSize size = AppButtonSize.small,
    double? horizontalPadding,
  }) {
    return AppButton(
      onPressed: onPressed,
      size: size,
      isLoading: isLoading,
      color: ButtonBackGroundColor.primary,
      textColor: ButtonTextColor.static,
      horizontalPadding: horizontalPadding,
      child: child,
    );
  }

  factory AppButton.secondary({
    required Widget child,
    required VoidCallback? onPressed,
    bool isLoading = false,
    AppButtonSize size = AppButtonSize.small,
    double? horizontalPadding,
  }) {
    return AppButton(
      onPressed: onPressed,
      size: size,
      isLoading: isLoading,
      color: ButtonBackGroundColor.primary,
      textColor: ButtonTextColor.static,
      horizontalPadding: horizontalPadding,
      child: child,
    );
  }

  final Widget child;
  final VoidCallback? onPressed;
  final bool isLoading;
  final AppButtonSize size;
  final double? horizontalPadding;
  final ButtonTextColor? textColor;
  final ButtonBackGroundColor color;
  final ButtonBackGroundColor? borderColor;
  final bool textButton;
  final bool outLined;

  TextStyle getTextStyle(BuildContext context, bool disable) {
    late TextStyle style;

    switch (size) {
      case AppButtonSize.small:
        style = AppTheme.of(context).c1.copyWith(color: textColor?.textStyle(context));
        break;
      case AppButtonSize.medium:
        style = AppTheme.of(context).s1.copyWith(color: textColor?.textStyle(context));
        break;
      case AppButtonSize.big:
        style = AppTheme.of(context).h2.copyWith(color: textColor?.textStyle(context));
        break;
    }

    if (disable) {
      return style.copyWith(color: AppTheme.of(context).text.secondary);
    }

    return style;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = color.getButtonColor(context);
    final textStyle = getTextStyle(context, onPressed == null);
    final content = isLoading
        ? ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 60),
            child: Center(
              child: SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  color: textStyle.color,
                  strokeWidth: 2,
                ),
              ),
            ),
          )
        : child;

    if (textButton) {
      return TextButton(
        onPressed: onPressed,
        child: DefaultTextStyle(
          style: textStyle,
          maxLines: 1,
          child: content,
        ),
      );
    }
    final border = borderColor?.getButtonColor(
          context,
        ) ??
        Colors.transparent;
    if (Platform.isIOS) {
      return IgnorePointer(
        ignoring: isLoading,
        child: Container(
          width: horizontalPadding == null ? double.infinity : null,
          decoration: BoxDecoration(
            border: Border.all(color: backgroundColor == Colors.transparent ? border : backgroundColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: CupertinoButton(
            onPressed: onPressed,
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 7, vertical: size.getButtonVertical()),
            minSize: 32,
            color: outLined ? Colors.transparent : backgroundColor,
            child: DefaultTextStyle(
              style: textStyle,
              maxLines: 1,
              child: content,
            ),
          ),
        ),
      );
    }

    if (backgroundColor == Colors.transparent) {
      final border = borderColor!.getButtonColor(context);
      return IgnorePointer(
        ignoring: isLoading,
        child: SizedBox(
          width: horizontalPadding == null ? double.infinity : null,
          child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: border),
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 7, vertical: size.getButtonVertical()),
            ),
            child: DefaultTextStyle(
              style: textStyle,
              maxLines: 1,
              child: content,
            ),
          ),
        ),
      );
    }

    return IgnorePointer(
      ignoring: isLoading,
      child: SizedBox(
        width: horizontalPadding == null ? double.infinity : null,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(outLined ? Colors.transparent : backgroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: backgroundColor == Colors.transparent ? border : backgroundColor),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 1, vertical: size.getButtonVertical()),
            child: DefaultTextStyle(
              style: textStyle,
              maxLines: 1,
              child: content,
            ),
          ),
        ),
      ),
    );
  }
}
