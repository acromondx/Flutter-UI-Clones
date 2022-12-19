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
    final textStyle = Theme.of(context).textTheme.headline1;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textBaseline: TextBaseline.ideographic,
      children: [
        Row(
          children: [
            Text(title, style: textStyle),
            const SizedBox(
              width: 6,
            ),
            child,
          ],
        ),
        Text(
          "..",
          style: textStyle!.copyWith(fontSize: 30),
        )
      ],
    );
  }
}
