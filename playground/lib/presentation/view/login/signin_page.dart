import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/widget/button/ui_text_button.dart';
import 'package:playground/presentation/widget/flexible/padded_flexibles.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/font.dart';
import 'package:playground/router/app_router.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: UiText('로그인', style: TextStyles.appbar),
      ),
      body: SafeArea(
        child: PaddedColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const Spacer(),
            UiTextButton(
              '서비스 이용하기',
              onTap: () => context.go(GoPath.home),
              textColor: UiColor.white,
              backgroundColor: UiColor.black,
            ),
          ],
        ),
      ),
    );
  }
}
