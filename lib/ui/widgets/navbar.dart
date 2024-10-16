import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/theme/color_schema.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: themeColorSchema.secondaryContainer,
      height: 80,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 300,),
          SizedBox(
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Home'),
                Text('About'),
                Text('Projects'),
                Text('Contact'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
