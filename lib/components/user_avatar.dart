import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.profilePicture,
    this.userName = '',
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
        if (userName != '')
          Text(
            userName,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
      ],
    );
  }
}
