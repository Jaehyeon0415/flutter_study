import 'package:flutter/material.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/font.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiText('채팅', style: TextStyles.appbar),
      ),
    );
  }
}
