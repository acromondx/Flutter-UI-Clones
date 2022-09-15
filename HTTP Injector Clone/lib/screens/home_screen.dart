import 'package:flutter/material.dart';
import 'package:httpinjector_clone/constants.dart';
import '../utils/tile_template.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // <-- Radius
              ),
            ),
            child: const Text('Start'),
          ),
        ),
        const TileTemplate(
          title: "SSL/TLS -> SSH",
          // subtitle: "",
          leadingIcon: Icon(Icons.border_horizontal_sharp),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        const TileTemplate(
          title: "Start",
          // subtitle: "dd",
          leadingIcon: Icon(Icons.border_horizontal_sharp),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
      ]),
    );
  }
}
