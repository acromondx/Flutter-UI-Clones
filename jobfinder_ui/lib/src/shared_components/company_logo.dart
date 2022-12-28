import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompanyLogo extends StatelessWidget {
  final String imageUrl;
  final Color imageBackground;
  final double size;
  const CompanyLogo({
    Key? key,
    required this.imageUrl,
    required this.imageBackground,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size + 10,
      width: size + 10,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: imageBackground.withOpacity(0.9),
      ),
      child: SvgPicture.asset(
        imageUrl,
        height: size,
        width: size,
        color: Colors.white,
      ),
    );
  }
}
