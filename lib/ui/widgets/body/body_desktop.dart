import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/description_text.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/profile_card.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/title_text.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 150),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileCard(),
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text('¡Hola!, soy Mario', style: TextStyle(fontSize: 40)),
            ),
          ],
        ),
        SizedBox(height: 50),
        TitleText(),
        SizedBox(height: 10),
        DescriptionText(),

      ],
    );
  }
}
