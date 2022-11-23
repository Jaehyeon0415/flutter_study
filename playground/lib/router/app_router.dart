import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/view/login/signin_page.dart';
import 'package:playground/presentation/view/page_package.dart';
import 'package:playground/presentation/view/setting/setting_page.dart';
import 'package:playground/res/duration.dart';

class GoPath {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signin = '/signin';
  static const String home = '/home';
  static const String category = '/category';
  static const String chat = '/chat';
  static const String profile = '/profile';
  static const String setting = 'setting';
}

class AppRouter {
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static Page _splashPageBuilder(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: SplashPage());

  static Page _loginPageBuilder(BuildContext context, GoRouterState state) =>
      CustomTransitionPage(
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
        child: const LoginPage(),
      );
  static Page _signinPageBuilder(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: SigninPage());
  static Page _homePageBuilder(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: HomePage());
  static Page _categoryPageBuilder(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: CategoryPage());
  static Page _chatPageBuilder(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: ChatPage());
  static Page _profilePageBuilder(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: ProfilePage());
  static Page _settingPageBuilder(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: SettingPage());

  final GoRouter _router = GoRouter(
    initialLocation: GoPath.splash,
    routes: [
      GoRoute(
          path: GoPath.splash, name: 'splash', pageBuilder: _splashPageBuilder),
      GoRoute(
          path: GoPath.login, name: 'login', pageBuilder: _loginPageBuilder),
      GoRoute(
          path: GoPath.signin, name: 'signin', pageBuilder: _signinPageBuilder),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return CustomTransitionPage(
            key: state.pageKey,
            transitionDuration: Durations.transition,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeThroughTransition(
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
            child: ScaffoldWithBottomNavBar(child: child),
          );
        },
        routes: [
          GoRoute(
              path: GoPath.home, name: 'home', pageBuilder: _homePageBuilder),
          GoRoute(
            path: GoPath.category,
            name: 'category',
            pageBuilder: _categoryPageBuilder,
          ),
          GoRoute(
              path: GoPath.chat, name: 'chat', pageBuilder: _chatPageBuilder),
          GoRoute(
            path: GoPath.profile,
            name: 'profile',
            pageBuilder: _profilePageBuilder,
            routes: [
              GoRoute(
                path: GoPath.setting,
                name: 'setting',
                pageBuilder: _settingPageBuilder,
              ),
            ],
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  GoRouter get router => _router;
}
