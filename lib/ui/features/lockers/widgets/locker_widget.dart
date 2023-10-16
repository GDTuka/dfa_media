import 'package:dfa_media/data/models/models.dart';
import 'package:dfa_media/ui/icons/stystem_icons.dart';
import 'package:dfa_media/ui/theme/theme.dart';
import 'package:dfa_media/ui/widgets/common/app_switch.dart';
import 'package:flutter/material.dart';

class LockerWidget extends StatelessWidget {
  const LockerWidget({super.key, required this.onSwitchTap, required this.lockerModel});

  final void Function(bool val) onSwitchTap;
  final LockerModel lockerModel;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: theme.bg.secondary,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 21),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: lockerModel.isLock ? theme.main.primary : theme.main.lockerOff,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SystemIcons.lock.getSvg(),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  lockerModel.title,
                  style: theme.h2.copyWith(color: theme.main.primary),
                ),
                const SizedBox(height: 2),
                Text(
                  'id: ${lockerModel.code}',
                  style: theme.c1.copyWith(color: theme.main.primary),
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: lockerModel.isLock ? theme.main.primary : theme.main.lockerOff,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    child: Text(
                      lockerModel.isLock ? 'locked' : 'unlocked',
                      style: theme.s2.copyWith(color: theme.bg.primary),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            AppSwitch(
              onChanged: onSwitchTap,
              value: lockerModel.isLock,
            ),
          ],
        ),
      ),
    );
  }
}
