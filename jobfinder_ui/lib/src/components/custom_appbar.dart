// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData prefixIcon;
  final bool showSuffixIcon;
  final void Function()? onPrefixTap;

  IconData? suffixIcon;
  CustomAppBar(
      {Key? key,
      // required this.selectedJob,
      required this.title,
      this.prefixIcon = Icons.grid_view_rounded,
      this.suffixIcon,
      this.onPrefixTap,
      this.showSuffixIcon = true})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline1;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        leading: GestureDetector(
          onTap: onPrefixTap,
          child: AppBarIcon(icon: prefixIcon),
        ),
        title: Text(
          title,
          style: textStyle!.copyWith(fontWeight: FontWeight.w800, fontSize: 23),
        ),
        actions: showSuffixIcon ? [AppBarIcon(icon: suffixIcon!)] : [],
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
