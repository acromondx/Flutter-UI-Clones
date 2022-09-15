import 'package:flutter/material.dart';

class TileTemplate extends StatelessWidget {
  //declaring variables
  final String title;
  // final String subtitle;
  final Icon leadingIcon;
  final Widget trailingIcon;

  const TileTemplate({
    Key? key,
    required this.title,
    // this.subtitle = "",
    required this.leadingIcon,
    required this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 12.0,
          ),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: leadingIcon,
                trailing: trailingIcon,
                title: Text(
                  title,
                  style: const TextStyle(color: Colors.grey),
                ),
                // subtitle: Text(subtitle),
              ))),
    );
  }
}

class TileTemplate2 extends StatelessWidget {
  //declaring variables
  final String title;
  final String subtitle;
  final Widget trailingIcon;

  const TileTemplate2({
    Key? key,
    required this.title,
    this.subtitle = "",
    this.trailingIcon = const Icon(Icons.arrow_forward_ios),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 12.0,
          ),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                trailing: trailingIcon,
                title: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(subtitle),
              ))),
    );
  }
}
