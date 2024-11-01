import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/animations/animated_circle.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/animations/breath_animation.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/animations/circle_circular_animation.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/animations/following_circles.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/animations/wave_animation.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/contact_widgets/contact_card.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/experience_widgets/experience_timeline.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/home.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/projects_widgets/projects_grid.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/sections_title.dart';
import 'package:my_portfolio/ui/widgets/centered_view.dart';

class BodyDesktop extends StatelessWidget {
  final GlobalKey homeKey;
  final GlobalKey experienceKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  const BodyDesktop({
    super.key,
    required this.homeKey,
    required this.experienceKey,
    required this.projectsKey,
    required this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 70, key: homeKey),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                alignment: Alignment.center,
                child: const AnimatedCircle()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.4,
                alignment: Alignment.center,
                child: const CircularPathAnimation()),
          ],
        ),
        const CenteredView(child: Home()),
        const SizedBox(height: 450),
        CenteredView(
          child: SectionsTitle(
            icon: Icons.work_outline_rounded,
            title: "Experiencia",
            key: experienceKey,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.3,
                alignment: Alignment.center,
                child: const BreathingCircle()),
          ],
        ),
        const CenteredView(child: ExperienceTimeline()),
        const SizedBox(height: 450),
        CenteredView(
          child: SectionsTitle(
            icon: Icons.code_rounded,
            title: "Proyectos",
            key: projectsKey,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.3,
                alignment: Alignment.center,
                child: const MovingAndBouncingCircle()),
          ],
        ),
        const CenteredView(child: ProjectsGrid()),
        const SizedBox(height: 450),
        CenteredView(
          child: SectionsTitle(
            icon: Icons.contact_mail_rounded,
            title: "Contacto",
            key: contactKey,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.3,
                alignment: Alignment.center,
                child: const FollowingCircles()),
          ],
        ),
        const CenteredView(child: ContactCard()),
        const SizedBox(height: 20),
      ],
    );
  }
}
