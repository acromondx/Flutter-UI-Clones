import 'package:flutter/material.dart';

class CCircle extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const CCircle({
    Key? key,
    required this.color,
    required this.width,
    required this.height,
    // required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
