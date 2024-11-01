import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/responsive_layout.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    final experienceColor = Theme.of(context).colorScheme.secondaryContainer;
    final basicColor = Theme.of(context).colorScheme.onSurface;
    return ResponsiveLayout(
      mobile: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text.rich(
                TextSpan(
                    text: 'Más de ',
                    style: TextStyle(color: basicColor),
                    children: [
                      TextSpan(
                        text: '1 año de experiencia ',
                        style: TextStyle(color: experienceColor),
                      ),
                      TextSpan(
                        text: 'desarrollando ',
                        style: TextStyle(color: basicColor),
                      ),
                      TextSpan(
                        text: 'aplicaciones móviles, web y de escritorio',
                        style: TextStyle(color: experienceColor),
                      ),
                      TextSpan(
                        text: ' enfocado siempre en la ',
                        style: TextStyle(color: basicColor),
                      ),
                      TextSpan(
                        text: 'experiencia de usuario ',
                        style: TextStyle(color: experienceColor),
                      ),
                      TextSpan(
                        text: 'y usabilidad.',
                        style: TextStyle(color: basicColor),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: Text.rich(
              TextSpan(
                  text: 'Más de ',
                  style: TextStyle(color: basicColor),
                  children: [
                    TextSpan(
                      text: '1 año de experiencia ',
                      style: TextStyle(color: experienceColor),
                    ),
                    TextSpan(
                      text: 'desarrollando ',
                      style: TextStyle(color: basicColor),
                    ),
                    TextSpan(
                      text: 'aplicaciones móviles, web y de escritorio',
                      style: TextStyle(color: experienceColor),
                    ),
                    TextSpan(
                      text: ' enfocado siempre en la ',
                      style: TextStyle(color: basicColor),
                    ),
                    TextSpan(
                      text: 'experiencia de usuario ',
                      style: TextStyle(color: experienceColor),
                    ),
                    TextSpan(
                      text: 'y usabilidad.',
                      style: TextStyle(color: basicColor),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
