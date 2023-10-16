import 'package:dfa_media/ui/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSwitch extends StatelessWidget {
  const AppSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final bool value;
  final void Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: 60,
      child: FittedBox(
        child: CupertinoSwitch(
          value: value,
          onChanged: onChanged,
          activeColor: AppTheme.of(context).main.primary,
          thumbColor: AppTheme.of(context).main.switchOff,
        ),
      ),
    );
  }
}
