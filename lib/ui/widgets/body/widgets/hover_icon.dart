import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HoverIcon extends StatefulWidget {
  final IconData icon;
  final String tooltip;
  final Function()? function;

  const HoverIcon(
      {super.key, required this.icon, required this.tooltip, this.function});

  @override
  State<HoverIcon> createState() => _HoverIconState();
}


class _HoverIconState extends State<HoverIcon> {
  IconData get icon => widget.icon;
  Function()? get function => widget.function;
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final String tooltip = widget.tooltip;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 200),
        tween: Tween<double>(begin: 30, end: _isHovered ? 40 : 30),
        builder: (context, size, child) {
          return IconButton(
            onPressed: function,
            tooltip: tooltip,
            iconSize: size,
            icon: Icon(
              color: Theme.of(context).colorScheme.surface,
              icon,
            ),
          );
        },
      ),
    );
  }
}
