import 'package:flutter/material.dart';

class SectionsTitle extends StatelessWidget {
  final IconData icon;
  final String title;

  const SectionsTitle({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.secondaryContainer;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon, size: 30, color: iconColor),
        ),
        Text(title,
            style: TextStyle(
                fontSize: 28,
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
