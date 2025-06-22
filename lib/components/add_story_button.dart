import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AddStoryButton extends StatelessWidget {
  const AddStoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DottedBorder(
          options: const CircularDottedBorderOptions(
            padding: EdgeInsets.zero,
            strokeWidth: 2,
            dashPattern: [12, 8],
            color: Colors.black12,
          ),
          child: Container(
            height: 67,
            width: 67,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            clipBehavior: Clip.antiAlias,
            child: const Icon(Icons.add),
          ),
        ),
        const Text(
          'Add story',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
