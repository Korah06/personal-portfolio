import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/body_desktop.dart';
import 'package:my_portfolio/ui/widgets/body/body_mobile.dart';
import 'package:my_portfolio/ui/widgets/navbar.dart';
import 'package:my_portfolio/ui/widgets/responsive_layout.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey homeKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveLayout(
      mobile: SingleChildScrollView(
        child: BodyMobile(
          homeKey: homeKey,
          experienceKey: experienceKey,
          projectsKey: projectsKey,
          contactKey: contactKey,
        ),
      ),
      desktop: Column(
        children: [
          Navbar(
              homeKey: homeKey,
              experienceKey: experienceKey,
              projectsKey: projectsKey,
              contactKey: contactKey),
          Expanded(
            child: SingleChildScrollView(
              child: BodyDesktop(
                  homeKey: homeKey,
                  experienceKey: experienceKey,
                  projectsKey: projectsKey,
                  contactKey: contactKey),
            ),
          ),
        ],
      ),
    ));
  }
}
