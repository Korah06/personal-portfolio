import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/body/widgets/hover_icon.dart';

class CardIcon extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final Function()? function;
  const CardIcon({super.key, required this.icon, required this.tooltip, this.function});

  @override
  Widget build(BuildContext context) {
    final IconData icon = this.icon;
    final String tooltip = this.tooltip;
    final Function()? function = this.function;
    final Color backgroundColor = Theme.of(context).colorScheme.secondaryContainer;
    return Card(
      shape: const CircleBorder(),
      elevation: 20,
      color: backgroundColor,
      child: HoverIcon(icon: icon, tooltip: tooltip, function: function),
    );
  }
}
