import 'package:flutter/material.dart';

class CategoryIcons extends StatelessWidget {
  final String emoji;
  final String title;
  const CategoryIcons({
    Key? key,
    required this.emoji,
    required this.title,
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
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[600]!,
                  blurStyle: BlurStyle.outer,
                )
              ],
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(
              emoji,
              style: const TextStyle(fontSize: 25),
            ))),
        const SizedBox(height: 5),
        Text(
          title,
          // softWrap: true,
          // overflow: TextOverflow.fade,
          // maxLines: 12,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 13),
        )
      ]),
    );
  }
}
