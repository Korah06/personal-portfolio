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
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: themeColorSchema.primary.withOpacity(0.5),
            width: 2,
          ),
        ),
        gradient: LinearGradient(
          colors: [
            themeColorSchema.secondaryContainer.withOpacity(1.0),
            themeColorSchema.secondaryContainer.withOpacity(0.75),
            themeColorSchema.secondaryContainer.withOpacity(0.40),
            themeColorSchema.secondaryContainer.withOpacity(0.15),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      height: 80,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 100,),
          SizedBox(
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Inicio'),
                Text('Experiencia'),
                Text('Proyectos'),
                Text('Contacto'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
