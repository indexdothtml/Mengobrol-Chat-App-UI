import 'package:flutter/material.dart';

import 'package:mengobrol_chat_app_ui/components/add_story_button.dart';
import 'package:mengobrol_chat_app_ui/components/user_story_button.dart';

void main() {
  runApp(const Mengobrol());
}

class Mengobrol extends StatelessWidget {
  const Mengobrol({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mengobrol',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.search, size: 35),
                  ],
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 15,
                    children: [
                      AddStoryButton(),
                      SizedBox(),
                      UserStoryButton(
                        profilePicture: 'assets/profile.jpg',
                        userName: 'Ron',
                      ),
                      UserStoryButton(
                        profilePicture: 'assets/profile.jpg',
                        userName: 'Ron',
                      ),
                      UserStoryButton(
                        profilePicture: 'assets/profile.jpg',
                        userName: 'Ron',
                      ),
                      UserStoryButton(
                        profilePicture: 'assets/profile.jpg',
                        userName: 'Ron',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
