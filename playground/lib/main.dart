import 'package:flutter/material.dart';
import 'package:playground/res/theme.dart';
import 'package:playground/router/app_router.dart';
import 'package:playground/util/system.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemUtil.lightSystemUi();

  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppTheme theme = const AppTheme();
  final AppRouter goRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    ThemeData appThemeData = theme.toThemeData();

    return MaterialApp.router(
      title: 'Playground',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      locale: theme.local,
      // routerConfig: goRouter.router,
      routerDelegate: goRouter.router.routerDelegate,
      routeInformationParser: goRouter.router.routeInformationParser,
      routeInformationProvider: goRouter.router.routeInformationProvider,
    );
  }
}
