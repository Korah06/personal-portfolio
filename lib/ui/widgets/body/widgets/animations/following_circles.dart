import 'dart:math';

import 'package:flutter/material.dart';

class FollowingCircles extends StatefulWidget {
  const FollowingCircles({super.key});

  @override
  _FollowingCirclesState createState() => _FollowingCirclesState();
}

class _FollowingCirclesState extends State<FollowingCircles>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final int numberOfCircles = 20; // Number of circles in the animation
  final double radius = 400.0; // Radius of the circular path

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat(); // Infinite animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: List.generate(numberOfCircles, (index) {
        double startOffset = (2 * pi / numberOfCircles) * index; // Staggered start angle

        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            double angle = _controller.value * 2 * pi + startOffset;
            double x = radius * cos(angle);
            double y = radius * sin(angle);

            return Transform.translate(
              offset: Offset(x, y),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}