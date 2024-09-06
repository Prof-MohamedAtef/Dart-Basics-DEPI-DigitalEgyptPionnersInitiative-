import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;
  final double iconSize;
  final double textSize;

  const IconTextRow({
    super.key,
    required this.icon,
    required this.text,
    this.iconColor = Colors.black,
    this.textColor = Colors.black,
    this.iconSize = 24.0,
    this.textSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        const SizedBox(width: 4), // Space between icon and text
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: textSize,
          ),
        ),
      ],
    );
  }
}