import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cardColor = Theme.of(context).colorScheme.primaryContainer;

    return Card(
      elevation: 20,
      shape: const CircleBorder(),
      color: cardColor,
      child: const Padding(
        padding: EdgeInsets.all(1.0),
        child: ClipOval(
          child: Image(
            image: AssetImage('assets/images/mario.jpg'),
            width: 150,
          ),
        ),
      ),
    );
  }
}
