import 'package:flutter/material.dart';

class ContactTitle extends StatelessWidget {
  const ContactTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "¡Gracias por visitar mi portafolio!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,),
        ),
        SizedBox(height: 10),
        Text(
          "Si te gustó mi trabajo y te gustaría trabajar conmigo, no dudes en contactarme.",
          style: TextStyle(
            fontSize: 16,),
        ),
      ],
    );
  }
}
