import 'package:flutter/material.dart';
import 'package:my_portfolio/data/model/project.dart';
import 'package:my_portfolio/data/model/skill.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/description_text.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/experience_timeline.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/sections_title.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/header_presentation.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/skill_card.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/social_media_icons_row.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/title_text.dart';

class BodyDesktop extends StatelessWidget {
  final GlobalKey homeKey;
  final GlobalKey experienceKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  const BodyDesktop(
      {super.key,
      required this.homeKey,
      required this.experienceKey,
      required this.projectsKey,
      required this.contactKey});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(height: 150, key: homeKey),
        const HeaderPresentation(),
        const SizedBox(height: 50),
        const TitleText(),
        const SizedBox(height: 10),
        const DescriptionText(),
        const SizedBox(height: 20),
        const SocialMediaIconsRow(),
        const SizedBox(height: 450),
        SectionsTitle(
          icon: Icons.work_outline_rounded,
          title: "Experiencia",
          key: experienceKey,
        ),
        const SizedBox(height: 20),
        const ExperienceTimeline(),
        const SizedBox(height: 450),
        SectionsTitle(
          icon: Icons.code_rounded,
          title: "Proyectos",
          key: projectsKey,
        ),
        const SizedBox(height: 20),
        GridView.builder(
          shrinkWrap: true,
          itemCount: Project.projects.length, // Number of items in the grid
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, // Number of columns
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            final project = Project.projects[index];
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
                     const Row(
                      children: [
                        SkillCard(skill: Skill.flutter),
                        SkillCard(skill: Skill.java),
                        SkillCard(skill: Skill.spring),
                        SkillCard(skill: Skill.mysql),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(project.description),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
