import 'package:flutter/material.dart';

import 'package:mengobrol_chat_app_ui/components/add_story_button.dart';
import 'package:mengobrol_chat_app_ui/components/user_avatar.dart';

class ScrollableStoryView extends StatelessWidget {
  const ScrollableStoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 15,
        children: [
          AddStoryButton(),
          SizedBox(),
          UserAvatar(profilePicture: 'assets/profile.jpg', userName: 'Ron'),
          UserAvatar(profilePicture: 'assets/profile.jpg', userName: 'Harry'),
          UserAvatar(
            profilePicture: 'assets/profile.jpg',
            userName: 'Hermione',
          ),
          UserAvatar(
            profilePicture: 'assets/profile.jpg',
            userName: 'Dumbledore',
          ),
        ],
      ),
    );
  }
}
