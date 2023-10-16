import 'package:auto_route/auto_route.dart';
import 'package:dfa_media/data/models/local/enums/bottom_nav_bar_pages.dart';
import 'package:dfa_media/ui/icons/stystem_icons.dart';
import 'package:dfa_media/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  late final appTabsRouter = AutoTabsRouter.of(context);
  BottomNavBarPage currentPage = BottomNavBarPage.lockers;
  List<int> routes = [1, 2, 3];

  void _onPageChanged(BottomNavBarPage newPage) {
    final newIndex = newPage.indexOfHomePage;
    appTabsRouter.setActiveIndex(newIndex);
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                _onPageChanged(BottomNavBarPage.lockers);
              },
              child: Container(
                color: Colors.transparent,
                child: SystemIcons.logo.getSvg(
                  currentPage == BottomNavBarPage.lockers ? theme.main.primary : theme.bg.secondary,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                _onPageChanged(BottomNavBarPage.friends);
              },
              child: Container(
                color: Colors.transparent,
                child: SystemIcons.friends.getSvg(
                  currentPage == BottomNavBarPage.friends ? theme.main.primary : theme.bg.secondary,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                _onPageChanged(BottomNavBarPage.profile);
              },
              child: Container(
                color: Colors.transparent,
                child: SystemIcons.profile.getSvg(
                  currentPage == BottomNavBarPage.profile ? theme.main.primary : theme.bg.secondary,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
