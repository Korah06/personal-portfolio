import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/init_widgets/card_icon.dart';
import 'package:my_portfolio/utils/copy_to_clipboard.dart';
import 'package:my_portfolio/utils/open_website.dart';

class SocialMediaIconsRow extends StatelessWidget {
  const SocialMediaIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CardIcon(
            icon: FontAwesomeIcons.github,
            tooltip: 'GitHub',
            function: () =>
                openWebsite(host: 'github.com', path: 'Korah06')),
        CardIcon(
            icon: FontAwesomeIcons.linkedin,
            tooltip: 'LinkedIn',
            function: () => openWebsite(
                host: 'linkedin.com',
                path: 'in/mario-espasa-planells-62b62a250/')),
        CardIcon(
            icon: Icons.attach_email,
            tooltip: 'Copy Email',
            function: () => copyToClipboard(
                text: 'marioespasa.dev@gmail.com',
                context: context,
                scaffoldText: 'Email copied to clipboard')),
      ],
    );
  }
}
