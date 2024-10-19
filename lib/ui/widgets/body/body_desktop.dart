import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/description_text.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/header_presentation.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/social_media_icons_row.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/title_text.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 150),
        HeaderPresentation(),
        SizedBox(height: 50),
        TitleText(),
        SizedBox(height: 10),
        DescriptionText(),
        SizedBox(height: 20),
        SocialMediaIconsRow(),
        SizedBox(height: 450),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Experiencia", style: TextStyle(fontSize: 28)),
          ],
        ),
        SizedBox(height: 900),
      ],
    );
  }
}
