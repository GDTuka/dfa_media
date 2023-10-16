import 'package:dfa_media/app/app.dart';
import 'package:dfa_media/di/app_async_dependency.dart';
import 'package:dfa_media/di/global/global_dep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    AsyncDependencyWidget<GlobalDependency>(
      create: GlobalDependency.new,
      loaderBuilder: (context) => Container(),
      errorBuilder: (context) => Container(),
      child: const App(),
    ),
  );
}
