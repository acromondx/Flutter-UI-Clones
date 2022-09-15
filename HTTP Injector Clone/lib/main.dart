import 'package:flutter/material.dart';
import 'package:httpinjector_clone/screens/help_screen.dart';
import 'package:httpinjector_clone/screens/log_screen.dart';
import 'package:httpinjector_clone/screens/tools_screen.dart';
import 'screens/home_screen.dart';
import 'utils/drawer_section.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HTTP Injector',
      theme: ThemeData(
          // primaryColor: const Color.fromARGB(255, 75, 172, 191),
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: const DrawerSection(),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.insert_drive_file_rounded)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          backgroundColor: kPrimaryColor,
          bottom: const TabBar(
            indicatorColor: kTabIndicatorColor,
            tabs: [
              Tab(text: "Home"),
              Tab(text: "Log"),
              Tab(text: "Tools"),
              Tab(text: "Help"),
            ],
          ),
          title: const Text('HTTP Injector'),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            LogScreen(),
            ToolsScreen(),
            HelpScreen(),
          ],
        ),
      ),
    );
  }
}
