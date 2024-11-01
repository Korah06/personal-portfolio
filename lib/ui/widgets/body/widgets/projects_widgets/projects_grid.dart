import 'package:flutter/material.dart';
import 'package:my_portfolio/data/model/project.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/projects_widgets/project_card.dart';
import 'package:my_portfolio/ui/widgets/responsive_layout.dart';

class ProjectsGrid extends StatelessWidget {
  const ProjectsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: Project.projects.length, // Number of items in the grid
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // Number of columns
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        final project = Project.projects[index];
        return ResponsiveLayout(
            mobile: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProjectCard(project: project),
            ),
            desktop: ProjectCard(project: project));
      },
    );
  }
}
