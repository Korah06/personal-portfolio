import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final specialWordColor = Theme.of(context).colorScheme.secondary;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: 'Desarrollador ',
            style: const TextStyle(fontSize: 20),
            children: [
              TextSpan(
                text: 'Multiplataforma',
                style: TextStyle(fontSize: 20, color: specialWordColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
