import 'package:flutter/material.dart';
import 'package:my_portfolio/data/model/skill.dart';

class SkillCard extends StatelessWidget {
  final Skill skill;
  const SkillCard({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.primary;
    final cardStatusColor = Theme.of(context).colorScheme.onSecondary;
    return Card(
      elevation: 10,
      color: cardStatusColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(skill.icon,color: iconColor,),
            const SizedBox(width: 5),
            Text(skill.name),
          ],
        ),
      ),
    );
  }
}
