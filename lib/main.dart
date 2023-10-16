import 'package:dfa_media/app/app.dart';
import 'package:dfa_media/di/app_async_dependency.dart';
import 'package:dfa_media/di/global/global_dep.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    AsyncDependencyWidget<GlobalDependency>(
      create: GlobalDependency.new,
      loaderBuilder: (context) => Container(),
      errorBuilder: (context) => Container(),
      child: const App(),
    ),
  );
}
