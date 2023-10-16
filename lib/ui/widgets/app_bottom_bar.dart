import 'package:auto_route/auto_route.dart';
import 'package:dfa_media/data/local/enums/bottom_nav_bar_pages.dart';
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
                child: Icon(
                  Icons.event,
                  color: currentPage == BottomNavBarPage.lockers ? Colors.blueAccent : Colors.black,
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
                child: Icon(
                  Icons.work,
                  color: currentPage == BottomNavBarPage.friends ? Colors.blueAccent : Colors.black,
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
                child: Icon(
                  Icons.person,
                  color: currentPage == BottomNavBarPage.profile ? Colors.blueAccent : Colors.black,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
