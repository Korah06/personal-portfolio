import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/card_icon.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/description_text.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/hover_icon.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/profile_card.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/title_text.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 150),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileCard(),
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text('¡Hola!, soy Mario', style: TextStyle(fontSize: 40)),
            ),
          ],
        ),
        const SizedBox(height: 50),
        const TitleText(),
        const SizedBox(height: 10),
        const DescriptionText(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CardIcon(
                icon: FontAwesomeIcons.github,
                tooltip: 'GitHub',
                function: () =>
                    _openWebsite(host: 'github.com', path: 'Korah06')),
            CardIcon(
                icon: FontAwesomeIcons.linkedin,
                tooltip: 'LinkedIn',
                function: () => _openWebsite(
                    host: 'linkedin.com',
                    path: 'in/mario-espasa-planells-62b62a250/')),
            CardIcon(icon: Icons.attach_email, tooltip: 'Copy Email', function: () => _copyToClipboard(text: 'marioespasa.dev@gmail.com', context: context, scaffoldText: 'Email copied to clipboard')),
          ],
        ),
      ],
    );
  }
}

_copyToClipboard({required String text, required BuildContext context, required String scaffoldText}) {
  Clipboard.setData(ClipboardData(text: text));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(scaffoldText)),
  );
}

_openWebsite({required String host, String? path}) async {
  final Uri url = Uri(
    scheme: 'https',
    host: host,
    path: path,
  );
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
