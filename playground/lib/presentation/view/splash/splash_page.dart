import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/router/app_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initializeRouter();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.black,
      child: Center(
        child: Text(
          'PLAYGROUND',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  void _initializeRouter() async {
    return Future.delayed(const Duration(seconds: 2), () {
      // Initialize app data...
      // Get router path
      context.go(AppRouter.home);
    });
  }
}
