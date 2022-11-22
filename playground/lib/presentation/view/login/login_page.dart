import 'package:flutter/material.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/font.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiText('로그인/회원가입', style: TextStyles.appbar),
      ),
    );
  }
}
