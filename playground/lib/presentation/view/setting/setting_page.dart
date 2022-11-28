import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/presentation/widget/tile/setting_tile.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/font.dart';
import 'package:playground/router/app_router.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiText('설정', style: TextStyles.appbar),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(parent: ClampingScrollPhysics()),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              SettingTile(
                onTap: () => context.goNamed(GoPath.login),
                title: '로그아웃',
                leading: const Icon(
                  Icons.logout_rounded,
                  color: UiColor.black,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
