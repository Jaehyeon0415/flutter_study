import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/view/category/category_page.dart';
import 'package:playground/presentation/view/chat/chat_page.dart';
import 'package:playground/presentation/view/home/home_page.dart';
import 'package:playground/presentation/view/profile/profile_page.dart';
import 'package:playground/presentation/view/scaffold/scaffold_with_navbar_tab_item.dart';
import 'package:playground/res/color.dart';
import 'package:playground/router/app_router.dart';
import 'package:playground/util/haptic.dart';

class ScaffoldWithBottomNavBar extends StatefulWidget {
  const ScaffoldWithBottomNavBar({Key? key, required this.index})
      : super(key: key);

  final int index;

  @override
  State<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.index);
  }

  @override
  void didUpdateWidget(covariant ScaffoldWithBottomNavBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.index == widget.index) return;
    pageController.jumpToPage(widget.index);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: PageView(
        controller: pageController,
        allowImplicitScrolling: true,
        pageSnapping: false,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          CategoryPage(),
          ChatPage(),
          ProfilePage(),
        ],
      ),
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
          items: const [
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
          ],
          currentIndex: _currentIndex,
          onTap: (index) => _onItemTapped(context, index),
        ),
      ),
    );
  }

  int get _currentIndex {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/category')) {
      return 1;
    }
    if (location.startsWith('/chat')) {
      return 2;
    }
    if (location.startsWith('/profile')) {
      return 3;
    }
    return 0;
  }

  void _onItemTapped(BuildContext context, int tabIndex) {
    Haptic.light();
    if (tabIndex != _currentIndex) {
      switch (tabIndex) {
        case 0:
          GoRouter.of(context).go('/home');
          break;
        case 1:
          GoRouter.of(context).go('/category');
          break;
        case 2:
          GoRouter.of(context).go('/chat');
          break;
        case 3:
          GoRouter.of(context).go('/profile');
          break;
      }
    }
  }
}
