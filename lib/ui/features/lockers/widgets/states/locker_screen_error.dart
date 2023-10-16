import 'package:dfa_media/ui/widgets/buttons/widgets/app_button.dart';
import 'package:flutter/material.dart';

class LockerScreenError extends StatelessWidget {
  const LockerScreenError({
    super.key,
    required this.refresh,
  });

  final VoidCallback refresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppButton.primary(
        onPressed: refresh,
        horizontalPadding: 14,
        child: const Text('Обновить'),
      ),
    );
  }
}
