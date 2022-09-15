import 'package:flutter/material.dart';
import 'package:httpinjector_clone/constants.dart';
import 'drawer_listtile.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 130,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'HTTP Injector',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '5.6.4(168)',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
          const ListTileTemplate(
              title: "Payload Generator", icon: Icon(Icons.developer_mode)),
          const ListTileTemplate(
              title: "Check IP", icon: Icon(Icons.remove_red_eye)),
          const ListTileTemplate(
              title: "Radio Network", icon: Icon(Icons.cell_tower)),
          const ListTileTemplate(title: "Settings", icon: Icon(Icons.settings)),
          const DividerTemplate(),
          const ListTileTemplate(
              title: "SSH Settings", icon: Icon(Icons.cloud_queue_sharp)),
          const DividerTemplate(),
          const ListTileTemplate(
              title: "Upgrade To Pro", icon: Icon(Icons.loyalty)),
          const ListTileTemplate(
              title: "More Evozi Apps", icon: Icon(Icons.ads_click)),
          const ListTileTemplate(title: "Share", icon: Icon(Icons.share)),
          const ListTileTemplate(title: "Rate", icon: Icon(Icons.rate_review)),
          const DividerTemplate(),
          const ListTileTemplate(title: "Servers", icon: Icon(Icons.public)),
          const ListTileTemplate(
              title: "Hardware ID", icon: Icon(Icons.fingerprint)),
        ],
      ),
    );
  }
}
