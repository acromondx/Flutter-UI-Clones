import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:jobfinder_ui/src/theme/colors.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 18),
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
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(IconlyBold.filter),
          color: primaryColor,
        ),
        prefixIcon: const Icon(
          IconlyLight.search,
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(15),
        hintText: 'Search job, company',
      ),
    );
  }
}
