import 'package:auto_route/auto_route.dart';
import 'package:dfa_media/navigation/app_router.dart';
import 'package:dfa_media/ui/widgets/common/app_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      homeIndex: 0,
      routes: const [
        LockersRoute(),
        FriendsRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, animation) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: const AppBottomBar(),
        );
      },
    );
  }
}
