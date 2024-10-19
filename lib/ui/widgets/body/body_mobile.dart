import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/profile_card.dart';

class BodyMobile extends StatelessWidget {
  const BodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileCard(),
        Text('¡Hola!, soy Mario', style: TextStyle(fontSize: 25)),
      ],
    );
  }
}
