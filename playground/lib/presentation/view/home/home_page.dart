import 'package:flutter/material.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/font.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiText('PLAYGROUND', style: TextStyles.appbar),
      ),
    );
  }
}
