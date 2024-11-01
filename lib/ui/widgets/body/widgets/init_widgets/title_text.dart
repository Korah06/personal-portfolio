import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/responsive_layout.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final specialWordColor = Theme.of(context).colorScheme.secondary;
    return ResponsiveLayout(
      mobile: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              text: 'Desarrollador ',
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.onSurface),
              children: [
                TextSpan(
                  text: 'Multiplataforma',
                  style: TextStyle(fontSize: 20, color: specialWordColor),
                ),
              ],
            ),
          ),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: 'Desarrollador ',
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.onSurface),
              children: [
                TextSpan(
                  text: 'Multiplataforma',
                  style: TextStyle(fontSize: 20, color: specialWordColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
