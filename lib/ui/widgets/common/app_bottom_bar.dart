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
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
            )
          ]),
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SystemIcons.logo.getSvg(
                      color: currentPage == BottomNavBarPage.lockers ? theme.main.primary : const Color(0xFF233833),
                    ),
                    const SizedBox(height: 10),
                    // Тут мне стало лень и поэтому я не стал выносить новый цвет и шрифт отдельно в тему
                    Text(
                      BottomNavBarPage.lockers.navTitle,
                      style: theme.s2.copyWith(
                          color: currentPage == BottomNavBarPage.lockers ? theme.main.primary : const Color(0xFF233833),
                          fontWeight: currentPage == BottomNavBarPage.lockers ? FontWeight.w700 : FontWeight.w500),
                    )
                  ],
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SystemIcons.friends.getSvg(
                      color: currentPage == BottomNavBarPage.friends ? theme.main.primary : const Color(0xFF233833),
                    ),
                    const SizedBox(height: 10),
                    // Тут мне стало лень и поэтому я не стал выносить новый цвет и шрифт отдельно в тему
                    Text(
                      BottomNavBarPage.friends.navTitle,
                      style: theme.s2.copyWith(
                          color: currentPage == BottomNavBarPage.friends ? theme.main.primary : const Color(0xFF233833),
                          fontWeight: currentPage == BottomNavBarPage.friends ? FontWeight.w700 : FontWeight.w500),
                    )
                  ],
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SystemIcons.profile.getSvg(
                      color: currentPage == BottomNavBarPage.profile ? theme.main.primary : const Color(0xFF233833),
                    ),
                    const SizedBox(height: 10),
                    // Тут мне стало лень и поэтому я не стал выносить новый цвет и шрифт отдельно в тему
                    Text(
                      BottomNavBarPage.profile.navTitle,
                      style: theme.s2.copyWith(
                          color: currentPage == BottomNavBarPage.profile ? theme.main.primary : const Color(0xFF2E665A),
                          fontWeight: currentPage == BottomNavBarPage.profile ? FontWeight.w700 : FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
