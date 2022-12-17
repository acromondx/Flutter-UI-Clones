import 'package:elearning_ui/theme/themes.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  final light = AppTheme.light();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: light,
    home: const Homepage(),
  ));
}
