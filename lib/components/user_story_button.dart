import 'package:flutter/material.dart';

class UserStoryButton extends StatelessWidget {
  const UserStoryButton({
    super.key,
    required this.profilePicture,
    required this.userName,
  });

  final String profilePicture;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 67,
          width: 67,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(profilePicture, fit: BoxFit.cover),
        ),
        Text(
          userName,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
