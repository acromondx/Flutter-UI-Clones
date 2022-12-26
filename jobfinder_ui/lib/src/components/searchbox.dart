// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:jobfinder_ui/src/theme/colors.dart';

class SearchBox extends StatelessWidget {
  final bool showFilterButton;
  final bool isHome;
  const SearchBox({
    Key? key,
    this.showFilterButton = true,
    this.isHome = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2!;
    return TextField(
      style: textStyle.copyWith(fontSize: 18),
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: Colors.grey[100],
        suffixIcon: showFilterButton
            ? IconButton(
                onPressed: () {},
                icon: const Icon(IconlyBold.filter),
                color: primaryColor,
              )
            : const SizedBox(),
        prefixIcon: const Icon(
          IconlyLight.search,
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(15),
        hintStyle: textStyle.copyWith(fontSize: 14),
        hintText: isHome ? 'Search job, company' : 'Search...',
      ),
    );
  }
}
