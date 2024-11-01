import 'package:flutter/material.dart';

class MovingAndBouncingCircle extends StatefulWidget {
  const MovingAndBouncingCircle({super.key});

  @override
  _MovingAndBouncingCircleState createState() => _MovingAndBouncingCircleState();
}

class _MovingAndBouncingCircleState extends State<MovingAndBouncingCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _horizontalAnimation;
  late Animation<double> _verticalAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true); // Loop the animation back and forth

    // Horizontal movement from -100 to 100
    _horizontalAnimation = Tween<double>(begin: -200, end: 200).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    // Vertical "bounce" movement (up and down)
    _verticalAnimation = Tween<double>(begin: 0, end: 1000).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut, // Smooth up-and-down bounce
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_horizontalAnimation.value, _verticalAnimation.value),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
  }
}