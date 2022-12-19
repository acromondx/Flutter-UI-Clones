import 'package:flutter/material.dart';

import 'src/homepage.dart';
import 'src/screens/course_detail/course_detail_screen.dart';
import 'src/theme/themes.dart';

void main() {
  final light = AppTheme.light();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elearning App',
      theme: light,
      home: const Homepage(),
      routes: {
        CourseDetailScreen.routeName: (ctx) => const CourseDetailScreen(),
      }));
}
