// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final Job selectedJob;
  final String title;
  final IconData prefixIcon;
  IconData? suffixIcon;
  final void Function()? onPrefixTap;
  CustomAppBar({
    Key? key,
    // required this.selectedJob,
    required this.title,
    this.prefixIcon = Icons.grid_view_rounded,
    this.suffixIcon,
    this.onPrefixTap,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        leading: GestureDetector(
          onTap: onPrefixTap,
          child: AppBarIcon(icon: prefixIcon),
        ),
        title: Text(title),
        actions: [
          AppBarIcon(
            icon: suffixIcon!,
          )
        ],
        centerTitle: true,
      ),
    );
  }
}

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  const AppBarIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: primaryColor,
            size: 30,
          ),
        ),
      ],
    );
  }
}
