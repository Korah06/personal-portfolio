import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/theme/color_schema.dart';

class Navbar extends StatefulWidget {
  final GlobalKey homeKey;
  final GlobalKey experienceKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  const Navbar(
      {super.key,
      required this.homeKey,
      required this.experienceKey,
      required this.projectsKey,
      required this.contactKey});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey homeKey = widget.homeKey;
    final GlobalKey experienceKey = widget.experienceKey;
    final GlobalKey projectsKey = widget.projectsKey;
    final GlobalKey contactKey = widget.contactKey;
    final isHovered = [
      false,
      false,
      false,
      false,
    ];

    void scrollToSection(GlobalKey key) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
    }

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: themeColorSchema.primary.withOpacity(0.0),
            width: 2,
          ),
        ),
        gradient: LinearGradient(
          colors: [
            themeColorSchema.secondaryContainer.withOpacity(1.0),
            themeColorSchema.secondaryContainer.withOpacity(0.55),
            themeColorSchema.secondaryContainer.withOpacity(0.20),
            themeColorSchema.secondaryContainer.withOpacity(0.02),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 100,
          ),
          SizedBox(
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MouseRegion(
                  onEnter: (_) => setState(() => isHovered[0] = true),
                  onExit: (_) => setState(() => isHovered[0] = false),
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => scrollToSection(homeKey),
                    child: const Text('Inicio'),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => scrollToSection(experienceKey),
                    child: const Text('Experiencia'),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => scrollToSection(projectsKey),
                    child: const Text('Proyectos'),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => scrollToSection(contactKey),
                    child: const Text('Contacto'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
