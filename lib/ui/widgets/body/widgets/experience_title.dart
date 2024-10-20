import 'package:flutter/material.dart';

class ExperienceTitle extends StatelessWidget {
  const ExperienceTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.secondaryContainer;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.work_outline, size: 30,color: iconColor),
        const Text("Experiencia", style: TextStyle(fontSize: 28)),
      ],
    );
  }
}
