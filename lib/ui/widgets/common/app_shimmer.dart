import 'package:flutter/material.dart';

class AppShimmer extends StatelessWidget {
  const AppShimmer({
    super.key,
    this.height,
    this.width,
    required this.borderRadius,
  });

  final int? height;
  final int? width;
  final int borderRadius;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
