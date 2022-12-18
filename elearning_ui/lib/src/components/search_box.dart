import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/colors.dart';

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
        border: InputBorder.none,
        fillColor: Colors.white,
        suffixIcon: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: deepGreen, borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            "images/search.svg",
            color: Colors.white,
          ),
        ),
        contentPadding: const EdgeInsets.all(15),
        hintText: 'Search courses...',
      ),
    );
  }
}
