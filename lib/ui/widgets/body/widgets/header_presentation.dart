import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/profile_card.dart';

class HeaderPresentation extends StatelessWidget {
  const HeaderPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ProfileCard(),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Text('¡Hola!, soy Mario', style: TextStyle(fontSize: 40,color: Theme.of(context).colorScheme.onSurface)),
        ),
      ],
    );
  }
}
