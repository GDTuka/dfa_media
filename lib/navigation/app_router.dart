import 'package:auto_route/auto_route.dart';
import 'package:dfa_media/ui/features/friends/friends_screen_widget.dart';
import 'package:dfa_media/ui/features/home/home_screen_widget.dart';
import 'package:dfa_media/ui/features/lockers/lockers_screen_widget.dart';
import 'package:dfa_media/ui/features/profile/profile_screen_widget.dart';
import 'package:flutter/material.dart';

part './app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'ScreenWidget,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: HomeScreenWidget,
      children: [
        AutoRoute(
          page: ProfileScreenWidget,
        ),
        AutoRoute(
          page: LockersScreenWidget,
        ),
        AutoRoute(
          page: FriendsScreenWidget,
        )
      ],
    )
  ],
)
class AppRouter extends _$AppRouter {}
