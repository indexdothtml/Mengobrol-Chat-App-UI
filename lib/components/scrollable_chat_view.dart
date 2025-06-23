import 'package:flutter/material.dart';

import 'package:mengobrol_chat_app_ui/components/chat_view.dart';

class ScrollableChatView extends StatelessWidget {
  const ScrollableChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 540,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ChatView(),
            ChatView(),
            ChatView(),
            ChatView(),
            ChatView(),
            ChatView(),
            ChatView(),
            ChatView(),
          ],
        ),
      ),
    );
  }
}
