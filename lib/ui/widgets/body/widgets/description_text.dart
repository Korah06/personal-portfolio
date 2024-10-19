import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    final experienceColor = Theme.of(context).colorScheme.onPrimary;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Text.rich(
            TextSpan(text: 'Más de ', children: [
              TextSpan(
                text: '1 año de experiencia ',
                style: TextStyle(color: experienceColor),
              ),
              const TextSpan(
                text: 'desarrollando ',
              ),
              TextSpan(
                text: 'aplicaciones móviles, web y de escritorio',
                style: TextStyle(color: experienceColor),
              ),
              const TextSpan(
                text: ' enfocado siempre en la ',
              ),
              TextSpan(
                text: 'experiencia de usuario ',
                style: TextStyle(color: experienceColor),
              ),
              const TextSpan(
                text: 'y usabilidad.',
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
