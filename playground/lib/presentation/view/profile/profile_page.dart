import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/font.dart';
import 'package:playground/router/app_router.dart';

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
        actions: [
          IconButton(
            onPressed: () => GoRouter.of(context).go('/profile/setting'),
            icon: const Icon(Icons.settings, color: UiColor.grey),
          ),
        ],
      ),
    );
  }
}
