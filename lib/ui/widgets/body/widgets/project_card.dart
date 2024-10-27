import 'package:flutter/material.dart';
import 'package:my_portfolio/data/model/project.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/skill_card.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {

    List<Widget> skillCards = project.skills.map((skill) => SkillCard(skill: skill)).toList();

    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(project.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Card(
              elevation: 10,
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(project.status == ProjectStatus.finished ? "En Producción" : "En progreso"),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: skillCards,
            ),
            const SizedBox(height: 10),
            Text(project.description),
          ],
        ),
      ),
    );
  }
}
