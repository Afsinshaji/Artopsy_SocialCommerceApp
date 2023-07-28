import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color buttonBackgroundColor;
  final Color iconColor;
  final Function onTap;
  final double radius;
  const CircularIconButton({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.buttonBackgroundColor,
    required this.iconColor,
    required this.onTap,
    this.radius = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: CircleAvatar(
        radius: radius,
        backgroundColor: buttonBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
