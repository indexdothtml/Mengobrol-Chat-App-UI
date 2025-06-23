import 'package:flutter/material.dart';

import 'package:mengobrol_chat_app_ui/components/user_avatar.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 12.0,
        children: [
          const UserAvatar(profilePicture: 'assets/profile.jpg'),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  'Ron',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Hey.. Please find my Scabbers for me, I dont know where he went?',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 5,
            children: [
              const Text('02:11'),
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: const Text('2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
