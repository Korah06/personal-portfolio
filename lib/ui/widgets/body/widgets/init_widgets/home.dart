import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/description_text.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/header_presentation.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/social_media_icons_row.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/title_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderPresentation(),
        SizedBox(height: 50),
        TitleText(),
        SizedBox(height: 10),
        DescriptionText(),
        SizedBox(height: 20),
        SocialMediaIconsRow(),
      ],
    );
  }
}
