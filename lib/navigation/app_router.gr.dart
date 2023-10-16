// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const HomeScreenWidget(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreenWidget(),
      );
    },
    LockersRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LockersScreenWidget(),
      );
    },
    FriendsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const FriendsScreenWidget(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            RouteConfig(
              ProfileRoute.name,
              path: 'profile-screen-widget',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              LockersRoute.name,
              path: 'lockers-screen-widget',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              FriendsRoute.name,
              path: 'friends-screen-widget',
              parent: HomeRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [HomeScreenWidget]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ProfileScreenWidget]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-screen-widget',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [LockersScreenWidget]
class LockersRoute extends PageRouteInfo<void> {
  const LockersRoute()
      : super(
          LockersRoute.name,
          path: 'lockers-screen-widget',
        );

  static const String name = 'LockersRoute';
}

/// generated route for
/// [FriendsScreenWidget]
class FriendsRoute extends PageRouteInfo<void> {
  const FriendsRoute()
      : super(
          FriendsRoute.name,
          path: 'friends-screen-widget',
        );

  static const String name = 'FriendsRoute';
}
