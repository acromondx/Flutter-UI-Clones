import 'package:flutter/material.dart';

class InfoChip extends StatelessWidget {
  final String title;
  final Color titleColor;
  const InfoChip({
    Key? key,
    required this.title,
    required this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: titleColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          " $title ",
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: titleColor, fontSize: 10),
        ));
  }
}
