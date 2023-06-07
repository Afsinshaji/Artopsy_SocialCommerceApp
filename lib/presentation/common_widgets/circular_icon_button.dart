import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color buttonBackgroundColor;
  final Color iconColor;
  final Function onTap;
  const CircularIconButton({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.buttonBackgroundColor,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: CircleAvatar(
        backgroundColor: buttonBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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