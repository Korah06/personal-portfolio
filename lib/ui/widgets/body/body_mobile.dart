import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/contact_widgets/contact_card.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/description_text.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/experience_widgets/experience_timeline.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/profile_card.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/projects_widgets/projects_grid.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/sections_title.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/social_media_icons_row.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/title_text.dart';

class BodyMobile extends StatelessWidget {
  final GlobalKey homeKey;
  final GlobalKey experienceKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  const BodyMobile({
    super.key,
    required this.homeKey,
    required this.experienceKey,
    required this.projectsKey,
    required this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50, key: homeKey),
        const ProfileCard(),
        Text('¡Hola!, soy Mario',
            style: TextStyle(
                fontSize: 25, color: Theme.of(context).colorScheme.onSurface)),
        const SizedBox(height: 20),
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
        const SizedBox(height: 50),
        SectionsTitle(
          icon: Icons.code_rounded,
          title: "Proyectos",
          key: projectsKey,
        ),
        const SizedBox(height: 20),
        const ProjectsGrid(),
        const SizedBox(height: 50),
        SectionsTitle(
          icon: Icons.contact_mail_rounded,
          title: "Contacto",
          key: contactKey,
        ),
        const SizedBox(height: 20),
        const ContactCard(),
        const SizedBox(height: 20),
      ],
    );
  }
}
