import 'package:flutter/material.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/font.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiText('Not Found', style: TextStyles.appbar),
      ),
    );
  }
}
