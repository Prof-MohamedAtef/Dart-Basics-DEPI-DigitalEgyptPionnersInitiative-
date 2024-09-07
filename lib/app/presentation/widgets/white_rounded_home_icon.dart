import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeIconWithCircle extends StatelessWidget {
  final String iconData;
  final double iconSize;
  final double width;
  final double height;
  final VoidCallback onTap;

  const HomeIconWithCircle({super.key,
    required this.iconData,
    required this.iconSize,
    required this.width,
    required this.height,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.all(3),
          decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: SvgPicture.asset(
            iconData,
            height: iconSize,
            width: iconSize,
          ),
        ),
      ),
    );
  }
}
