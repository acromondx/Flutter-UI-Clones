import 'package:flutter/material.dart';

class VerticalBarDecoration extends StatelessWidget {
  final String title;
  Widget child;
  VerticalBarDecoration({
    Key? key,
    required this.title,
    this.child = const SizedBox(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textBaseline: TextBaseline.ideographic,
      children: [
        Row(
          children: [
            Text(title, style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              width: 6,
            ),
            child,
          ],
        ),
        Text(
          "..",
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30),
        )
      ],
    );
  }
}
