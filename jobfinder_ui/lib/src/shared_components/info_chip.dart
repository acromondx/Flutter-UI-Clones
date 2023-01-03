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
    return Chip(
      label: Text(
        title,
        style: Theme.of(context).textTheme.headline1!.copyWith(
            color: titleColor, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      backgroundColor: titleColor.withOpacity(0.15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    );
    // return Container(
    //     height: 28,
    //     padding: const EdgeInsets.all(5),
    //     decoration: BoxDecoration(
    //         color: titleColor.withOpacity(0.15),
    //         borderRadius: BorderRadius.circular(6)),
    //     child: Text(
    //       " $title ",
    //       style: Theme.of(context).textTheme.headline1!.copyWith(
    //           color: titleColor, fontSize: 16, fontWeight: FontWeight.w500),
    //     ));
  }
}
