import 'package:dfa_media/di/app_async_dependency.dart';
import 'package:dfa_media/navigation/app_router.dart';
import 'package:dfa_media/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class GlobalDependency extends AppAsyncDependency {
  final theme = AppThemeData.light();
  late final AppRouter globalRouter;

  @override
  Future<void> initAsync(BuildContext context) async {
    globalRouter = AppRouter();
  }
}

extension DepContextExtension on BuildContext {
  GlobalDependency get global => read<GlobalDependency>();
}
