import 'package:flutter/material.dart';

import 'src/page_navigator.dart';
import 'src/screens/job_detail_screen.dart';
import 'src/theme/themes.dart';

void main() {
  final light = AppTheme.light();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder',
      theme: light,
      home: const PageNavigator(),
      routes: {
        JobDetailScreen.routeName: (ctx) => const JobDetailScreen(),
      }));
}
