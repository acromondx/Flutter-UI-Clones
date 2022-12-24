// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryIcons extends StatelessWidget {
  final String icon;
  final String title;
  final Color iconColor;
  const CategoryIcons({
    Key? key,
    required this.icon,
    required this.title,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(children: [
        Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: iconColor.withOpacity(0.15),
            ),
            child: Center(
                child: SvgPicture.asset(
              color: iconColor,
              icon,
              height: 40,
              width: 40,
            ))),
        const SizedBox(height: 5),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 13),
        )
      ]),
    );
  }
}
