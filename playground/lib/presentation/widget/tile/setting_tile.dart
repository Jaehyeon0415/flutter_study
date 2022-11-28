import 'package:flutter/material.dart';
import 'package:playground/presentation/widget/flexible/spacers.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/color.dart';
import 'package:playground/res/font.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    required this.onTap,
    required this.title,
    required this.leading,
  });

  final VoidCallback onTap;
  final String title;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: UiColor.divider)),
        ),
        child: Row(
          children: [
            leading,
            HSpace.i20,
            Expanded(
              child: UiText(
                title,
                style: TextStyles.notoSansKR.copyWith(
                  fontSize: FontSizes.s18,
                  fontWeight: FontWeight.w500,
                  height: 1.3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
