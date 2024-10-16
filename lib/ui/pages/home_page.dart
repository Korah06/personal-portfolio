import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Navbar(),
        ],
      )
    );
  }
}
