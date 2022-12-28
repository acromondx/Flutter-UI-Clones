import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final String text;
  final String subtext;
  const InfoBox({
    Key? key,
    required this.text,
    required this.subtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2;

    return Container(
      height: 80,
      width: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3, color: Colors.grey[50]!),
      ),
      child: Column(children: [
        Text(text,
            style:
                textStyle!.copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Text(subtext, style: textStyle.copyWith(fontSize: 15)),
      ]),
    );
  }
}
