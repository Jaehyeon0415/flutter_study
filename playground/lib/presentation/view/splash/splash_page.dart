import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/widget/flexible/spacers.dart';
import 'package:playground/presentation/widget/progress_indicator.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/font.dart';
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
    return Material(
      color: UiColor.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiText('PLAYGROUND', style: TextStyles.logo),
          VSpace.i24,
          const UiCircleIndicator(),
        ],
      ),
    );
  }

  void _initializeRouter() async {
    return Future.delayed(const Duration(seconds: 2), () {
      // Initialize app data...
      // Get router path
      context.goNamed(GoPath.login);
      // context.go(AppRouter.home);
    });
  }
}
