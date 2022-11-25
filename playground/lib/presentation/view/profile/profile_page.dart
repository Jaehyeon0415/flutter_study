import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/presentation/widget/button/ui_text_button.dart';
import 'package:playground/presentation/widget/flexible/spacers.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/font.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  int count = 0;

  void _increaseCount() => setState(() => count++);
  void _decreaseCount() => setState(() => count--);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(
          title: UiText('프로필', style: TextStyles.appbar),
          actions: [
            IconButton(
              onPressed: () => GoRouter.of(context).push('/setting'),
              icon: const Icon(Icons.settings, color: UiColor.grey),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiText('$count', style: TextStyles.logo),
            VSpace.i20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiTextButton(
                  '감소',
                  onTap: () => _decreaseCount(),
                ),
                HSpace.i12,
                UiTextButton(
                  '증가',
                  onTap: () => _increaseCount(),
                ),
              ],
            )
          ],
        ));
  }
}
