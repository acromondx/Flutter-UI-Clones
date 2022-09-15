import 'package:flutter/material.dart';

class ListTileTemplate extends StatelessWidget {
  final String title;
  final Icon icon;

  const ListTileTemplate({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: () {},
    );
  }
}

class DividerTemplate extends StatelessWidget {
  const DividerTemplate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black45,
      indent: 16,
      endIndent: 22,
      thickness: 1,
    );
  }
}
