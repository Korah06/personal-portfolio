import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/profile_card.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50),
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
      ],
    );
  }
}