import 'package:dfa_media/ui/theme/theme.dart';
import 'package:dfa_media/ui/widgets/common/app_shimmer.dart';
import 'package:flutter/material.dart';

class LockerLoadingScreen extends StatelessWidget {
  const LockerLoadingScreen({super.key});

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
                child: const AppShimmer(
                  height: 50,
                  width: 50,
                  borderRadius: 100,
                )),
            const SizedBox(width: 20),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                AppShimmer(
                  height: 10,
                  width: 70,
                  borderRadius: 8,
                ),
                SizedBox(height: 2),
                AppShimmer(
                  height: 7,
                  width: 50,
                  borderRadius: 8,
                ),
                SizedBox(height: 15),
                AppShimmer(
                  height: 20,
                  width: 70,
                  borderRadius: 30,
                ),
              ],
            ),
            const Spacer(),
            const AppShimmer(
              height: 30,
              width: 60,
              borderRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
