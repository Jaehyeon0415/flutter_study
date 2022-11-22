import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/view/category/category_page.dart';
import 'package:playground/presentation/view/chat/chat_page.dart';
import 'package:playground/presentation/view/error/not_found_page.dart';
import 'package:playground/presentation/view/home/home_page.dart';
import 'package:playground/presentation/view/login/login_page.dart';
import 'package:playground/presentation/view/profile/profile_page.dart';
import 'package:playground/presentation/view/scaffold/scaffold_with_bottom_navbar.dart';
import 'package:playground/presentation/view/splash/splash_page.dart';

class AppRouter {
  static const String splash = '/splash';
  static const String login = '/login';
  // static const String main = '/';
  static const String home = '/home';
  static const String category = '/category';
  static const String chat = '/chat';
  static const String profile = '/profile';

  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static Page _splashPageBuilder(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: SplashPage());

  static Page _loginPageBuilder(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: LoginPage());

  static Page _homePageBuilder(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: HomePage());
  static Page _categoryPageBuilder(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: CategoryPage());
  static Page _chatPageBuilder(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: ChatPage());
  static Page _profilePageBuilder(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: ProfilePage());

  final GoRouter _router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(path: splash, name: 'splash', pageBuilder: _splashPageBuilder),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScaffoldWithBottomNavBar(child: child);
        },
        routes: [
          GoRoute(path: home, name: 'home', pageBuilder: _homePageBuilder),
          GoRoute(
              path: category,
              name: 'category',
              pageBuilder: _categoryPageBuilder),
          GoRoute(path: chat, name: 'chat', pageBuilder: _chatPageBuilder),
          GoRoute(
              path: profile, name: 'profile', pageBuilder: _profilePageBuilder),
        ],
      ),
      GoRoute(path: login, name: 'login', pageBuilder: _loginPageBuilder),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  GoRouter get router => _router;
}
