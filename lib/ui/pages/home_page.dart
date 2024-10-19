import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/body_desktop.dart';
import 'package:my_portfolio/ui/widgets/body/body_mobile.dart';
import 'package:my_portfolio/ui/widgets/centered_view.dart';
import 'package:my_portfolio/ui/widgets/navbar.dart';
import 'package:my_portfolio/ui/widgets/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
      mobile: CenteredView(child: BodyMobile()),
      desktop: Column(
        children: [
          Navbar(),
          Expanded(
            child: SingleChildScrollView(
              child: CenteredView(child: BodyDesktop()),
            ),
          ),
        ],
      ),
    ));
  }
}
