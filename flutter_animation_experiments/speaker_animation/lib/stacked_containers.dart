import 'package:flutter/material.dart';

import 'ccircle.dart';

class StackedContainers extends StatelessWidget {
  const StackedContainers({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CCircle(
          height: 450.0,
          width: 450.0,
          color: color,
        ),
        CCircle(
          height: 300.0,
          width: 300.0,
          color: color,
        ),
        CCircle(
          width: 250.0,
          height: 250.0,
          color: color,
        ),
        CCircle(
          width: 200.0,
          height: 200.0,
          color: color,
        ),
        CCircle(
          width: 50.0,
          height: 50.0,
          color: color,
        ),
        CCircle(
          width: 20.0,
          height: 20.0,
          color: color,
        ),
      ],
    );
  }
}
