import 'dart:math';

import 'package:flutter/material.dart';

class CircularPathAnimation extends StatefulWidget {
  const CircularPathAnimation({super.key});

  @override
  CircularPathAnimationState createState() => CircularPathAnimationState();
}

class CircularPathAnimationState extends State<CircularPathAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4), // Adjust the speed of the rotation
      vsync: this,
    )..repeat(); // Repeat infinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Define the radius of the circular path
    double radius = 100.0;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // Calculate the current angle in radians based on the animation value
        double angle = _controller.value * 2 * pi;

        // Calculate the x and y coordinates based on the angle
        double x = radius * cos(angle);
        double y = radius * sin(angle);

        return Transform.translate(
          offset: Offset(x, y),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSurface,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
