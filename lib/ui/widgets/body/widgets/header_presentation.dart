import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/profile_card.dart';

class HeaderPresentation extends StatelessWidget {
  const HeaderPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfileCard(),
        Padding(
          padding: EdgeInsets.only(top: 100),
          child: Text('¡Hola!, soy Mario', style: TextStyle(fontSize: 40)),
        ),
      ],
    );
  }
}
