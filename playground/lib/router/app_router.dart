import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/view/login/signin_page.dart';
import 'package:playground/presentation/view/page_package.dart';
import 'package:playground/presentation/view/product/product_detail_page.dart';
import 'package:playground/presentation/view/setting/setting_page.dart';

class GoPath {
  static const String splash = 'splash';
  static const String login = 'login';
  static const String signin = 'signin';
  static const String home = 'home';
  static const String category = 'category';
  static const String chat = 'chat';
  static const String profile = 'profile';
  static const String setting = 'setting';
  static const String productDetail = 'productDetail';
}

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        name: GoPath.splash,
        pageBuilder: (context, state) =>
            MaterialPage(key: state.pageKey, child: const SplashPage()),
      ),
      GoRoute(
        path: '/login',
        name: GoPath.login,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        path: '/signin',
        name: GoPath.signin,
        pageBuilder: (context, state) =>
            MaterialPage(key: state.pageKey, child: const SigninPage()),
      ),
      GoRoute(
        path: '/:screen(home|category|chat|profile)',
        pageBuilder: (context, state) {
          final screen = state.params['screen'];
          int index;
          switch (screen) {
            case 'home':
              index = 0;
              break;
            case 'category':
              index = 1;
              break;
            case 'chat':
              index = 2;
              break;
            case 'profile':
              index = 3;
              break;
            default:
              index = 0;
              break;
          }
          return NoTransitionPage(
            key: state.pageKey,
            child: ScaffoldWithBottomNavBar(index: index),
          );
        },
      ),
      // ShellRoute(
      //   navigatorKey: _shellNavigatorKey,
      //   pageBuilder: (context, state, child) {
      //     return CustomTransitionPage(
      //       key: state.pageKey,
      //       transitionDuration: Durations.transition,
      //       transitionsBuilder:
      //           (context, animation, secondaryAnimation, child) {
      //         return FadeThroughTransition(
      //           animation: animation,
      //           secondaryAnimation: secondaryAnimation,
      //           child: child,
      //         );
      //       },
      //       child: ScaffoldWithBottomNavBar(child: child),
      //     );
      //   },
      //   routes: [
      //     GoRoute(
      //       path: '/home',
      //       name: GoPath.home,
      //       pageBuilder: (context, state) =>
      //           NoTransitionPage(key: state.pageKey, child: const HomePage()),
      //     ),
      //     GoRoute(
      //       path: '/category',
      //       name: GoPath.category,
      //       pageBuilder: (context, state) => NoTransitionPage(
      //           key: state.pageKey, child: const CategoryPage()),
      //     ),
      //     GoRoute(
      //       path: '/chat',
      //       name: GoPath.chat,
      //       pageBuilder: (context, state) =>
      //           NoTransitionPage(key: state.pageKey, child: const ChatPage()),
      //     ),
      //     GoRoute(
      //       path: '/profile',
      //       name: GoPath.profile,
      //       pageBuilder: (context, state) => NoTransitionPage(
      //           key: state.pageKey, child: const ProfilePage()),
      //       routes: [
      //         GoRoute(
      //           path: 'setting',
      //           name: GoPath.setting,
      //           pageBuilder: (context, state) => MaterialPage(
      //               key: state.pageKey, child: const SettingPage()),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      GoRoute(
        path: '/product/:productId',
        name: GoPath.productDetail,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: ProductDetailPage(
            productId: int.parse(state.params['productId'] as String),
          ),
        ),
      ),
      GoRoute(
        path: '/profile/setting',
        name: GoPath.setting,
        pageBuilder: (context, state) =>
            MaterialPage(key: state.pageKey, child: const SettingPage()),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  GoRouter get router => _router;
}
