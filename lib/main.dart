import 'package:flutter/material.dart';

import 'package:mengobrol_chat_app_ui/components/scrollable_story_view.dart';
import 'package:mengobrol_chat_app_ui/components/scrollable_chat_view.dart';

void main() {
  runApp(const Mengobrol());
}

class Mengobrol extends StatelessWidget {
  const Mengobrol({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          minimum: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mengobrol',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.search, size: 35),
                ],
              ),
              const SizedBox(height: 15),
              const ScrollableStoryView(),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chats',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.more_horiz, size: 30),
                ],
              ),
              const SizedBox(height: 25),
              const ScrollableChatView(),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home_outlined),
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(200, 50),
                    ),
                    icon: const Icon(Icons.add, size: 30),
                    label: const Text(
                      'New Chat',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_2_outlined),
                    iconSize: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
