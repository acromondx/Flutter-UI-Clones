// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/colors.dart';

class LightIconBox extends StatelessWidget {
  final String icon;
  final String title;
  final double height;
  final double width;
  const LightIconBox({
    Key? key,
    required this.icon,
    required this.title,
    this.height = 45,
    this.width = 45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            icon,
            color: primaryColor,
            height: height,
            width: width,
          ),
        ),
        const SizedBox(height: 10),
        Text(title)
      ],
    );
  }
}
