import 'package:flutter/material.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/font.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiText('프로필', style: TextStyles.appbar),
      ),
    );
  }
}
