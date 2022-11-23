import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/view/scaffold/scaffold_with_navbar_tab_item.dart';
import 'package:playground/res/color.dart';
import 'package:playground/router/app_router.dart';
import 'package:playground/util/haptic.dart';

class ScaffoldWithBottomNavBar extends StatefulWidget {
  const ScaffoldWithBottomNavBar({super.key, required this.child});

  final Widget child;

  @override
  State<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  final tabs = const [
    ScaffoldWithNavBarTabItem(
      initialLocation: GoPath.home,
      icon: Icon(Icons.home_rounded),
      label: 'Home',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: GoPath.category,
      icon: Icon(Icons.menu_rounded),
      label: 'Category',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: GoPath.chat,
      icon: Icon(Icons.chat_rounded),
      label: 'Chat',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: GoPath.profile,
      icon: Icon(Icons.person_outline_rounded),
      label: 'Profile',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey.shade300)),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: UiColor.white,
          selectedItemColor: UiColor.primary,
          unselectedItemColor: Colors.grey.shade500,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: tabs,
          currentIndex: _currentIndex,
          onTap: (index) => _onItemTapped(context, index),
        ),
      ),
    );
  }

  int get _currentIndex {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith(GoPath.home)) {
      return 0;
    }
    if (location.startsWith(GoPath.category)) {
      return 1;
    }
    if (location.startsWith(GoPath.chat)) {
      return 2;
    }
    if (location.startsWith(GoPath.profile)) {
      return 3;
    }
    return 0;
  }

  void _onItemTapped(BuildContext context, int tabIndex) {
    Haptic.light();
    if (tabIndex != _currentIndex) {
      switch (tabIndex) {
        case 0:
          GoRouter.of(context).go(GoPath.home);
          break;
        case 1:
          GoRouter.of(context).go(GoPath.category);
          break;
        case 2:
          GoRouter.of(context).go(GoPath.chat);
          break;
        case 3:
          GoRouter.of(context).go(GoPath.profile);
          break;
      }
    }
  }
}
