import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconMini extends StatelessWidget {
  final String svg;
  const SvgIconMini({
    Key? key,
    required this.svg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/svg/other/$svg.svg', height: 15, width: 15);
  }
}
