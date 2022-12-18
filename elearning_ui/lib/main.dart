import 'package:elearning_ui/screens/course_detail/course_detail_screen.dart';
import 'package:elearning_ui/theme/themes.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  final light = AppTheme.light();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light,
      home: const Homepage(),
      routes: {
        CourseDetailScreen.routeName: (ctx) => const CourseDetailScreen(),
      }));
}
