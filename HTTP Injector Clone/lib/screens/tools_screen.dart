import 'package:flutter/material.dart';
import 'package:httpinjector_clone/constants.dart';
import '../utils/tile_template.dart';

class ToolsScreen extends StatefulWidget {
  const ToolsScreen({Key? key}) : super(key: key);

  @override
  State<ToolsScreen> createState() => _ToolsScreenState();
}

class _ToolsScreenState extends State<ToolsScreen> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TileTemplate2(
                title: "Host Checker",
                subtitle: "Check host header information"),
            const TileTemplate2(
                title: "DNS Changer",
                subtitle: "Improve privacy and bypass internet censorship"),
            const TileTemplate2(
                title: "Tethering Tools",
                subtitle: "Tether VPN connection or unblock the hotspot limit"),
            const TileTemplate2(
                title: "IP Hunter", subtitle: "Search local IP addresss"),
            const TileTemplate2(
                title: "Diagnostic",
                subtitle: "Diagnose and troubleshoot device"),
            const TileTemplate2(
              title: "Download Network Speed ⚡",
              subtitle:
                  "[Ad] Monitor your network usage in real time and show statistics at a glance",
            ),
            TileTemplate2(
              title: "Debug Mode",
              subtitle: "Show more detailed info in the log",
              trailingIcon: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: kPrimaryColor,
                activeTrackColor: Colors.grey.shade400,
                inactiveThumbColor: const Color.fromARGB(255, 154, 154, 154),
                inactiveTrackColor: const Color.fromARGB(255, 110, 110, 110),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
