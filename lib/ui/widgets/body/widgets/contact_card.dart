import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/contact_form.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/contact_title.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      elevation: 20,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ContactTitle(),
            SizedBox(height: 30),
            ContactForm(),
          ],
        ),
      ),
    );
  }
}
