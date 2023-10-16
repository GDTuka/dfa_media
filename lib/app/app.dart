import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dfa_media/di/global/global_dep.dart';
import 'package:dfa_media/ui/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  static final navigatorGlobalKey = GlobalKey<NavigatorState>();
  static NavigatorState get navigatorState {
    if (navigatorGlobalKey.currentState == null) {
      throw "can't provide NavigatorState as it isn't created yet or already disposed";
    }
    return navigatorGlobalKey.currentState!;
  }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final global = context.global;
    return AppTheme(
      data: global.theme,
      child: Builder(
        builder: (_) {
          if (Platform.isAndroid) {
            return MaterialApp.router(
              title: 'dfa_mdeia',
              debugShowCheckedModeBanner: false,
              routerDelegate: AutoRouterDelegate(
                global.globalRouter,
              ),
              routeInformationParser: global.globalRouter.defaultRouteParser(),
              builder: (context, child) {
                if (child == null) return Container();
                return child;
              },
            );
          }
          if (Platform.isIOS) {
            return Theme(
              data: materialThemeFromAppTheme(global.theme),
              child: CupertinoApp.router(
                title: 'dfa_media',
                debugShowCheckedModeBanner: false,
                //localization
                // locale: context.watch<LocaleProvider>().locale,
                //theming
                //navigation
                routerDelegate: AutoRouterDelegate(
                  global.globalRouter,
                ),
                routeInformationParser: global.globalRouter.defaultRouteParser(),
                //builders
                builder: (context, child) {
                  if (child == null) return Container();
                  return child;
                },
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
