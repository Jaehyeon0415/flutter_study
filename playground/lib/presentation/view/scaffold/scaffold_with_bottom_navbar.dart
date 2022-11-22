import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/view/scaffold/scaffold_with_navbar_tab_item.dart';
import 'package:playground/res/color.dart';

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
      initialLocation: '/home',
      icon: Icon(Icons.home_rounded),
      label: 'Home',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: '/category',
      icon: Icon(Icons.menu_rounded),
      label: 'Category',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: '/chat',
      icon: Icon(Icons.chat_rounded),
      label: 'Chat',
    ),
    ScaffoldWithNavBarTabItem(
      initialLocation: '/profile',
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
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }

  // callback used to navigate to the desired tab
  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      // go to the initial location of the selected tab (by index)
      context.go(tabs[tabIndex].initialLocation);
    }
  }
}
