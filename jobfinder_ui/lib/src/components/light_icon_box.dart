// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/colors.dart';

class LightIconBox extends StatelessWidget {
  final String icon;
  String title;
  final double height;
  final double width;
  final bool showTitle;
  LightIconBox(
      {Key? key,
      required this.icon,
      this.title = 'a',
      this.height = 25,
      this.width = 25,
      this.showTitle = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: height,
          // width: width,
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
        SizedBox(height: showTitle ? 10 : 0),
        Text(title, style: TextStyle(fontSize: showTitle ? 14 : 0))
      ],
    );
  }
}
