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
      initialLocation: AppRouter.home,
      icon: Icon(Icons.home_rounded),
      label: 'Home',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: AppRouter.category,
      icon: Icon(Icons.menu_rounded),
      label: 'Category',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: AppRouter.chat,
      icon: Icon(Icons.chat_rounded),
      label: 'Chat',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: AppRouter.profile,
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

  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);

  int _locationToTabIndex(String location) {
    final index =
        tabs.indexWhere((t) => location.startsWith(t.initialLocation));
    return index < 0 ? 0 : index;
  }

  void _onItemTapped(BuildContext context, int tabIndex) {
    Haptic.light();
    if (tabIndex != _currentIndex) {
      context.go(tabs[tabIndex].initialLocation);
    }
  }
}
