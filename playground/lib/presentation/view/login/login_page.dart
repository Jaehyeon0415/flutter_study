import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/widget/button/ui_text_button.dart';
import 'package:playground/presentation/widget/flexible/padded_flexibles.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/font.dart';
import 'package:playground/router/app_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PaddedColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const Spacer(),
            UiText('PLAYGROUND', style: TextStyles.logo),
            const Spacer(),
            UiTextButton(
              '둘러보기',
              onTap: () => context.pushNamed(GoPath.signin),
              textColor: UiColor.white,
              backgroundColor: UiColor.black,
            ),
          ],
        ),
      ),
    );
  }
}
