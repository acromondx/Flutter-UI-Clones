import 'package:flutter/material.dart';
import 'package:jobfinder_ui/src/components/custom_appbar.dart';
import 'package:jobfinder_ui/src/components/searchbox.dart';
import 'package:jobfinder_ui/src/components/selectable_buttons.dart';
import 'package:jobfinder_ui/src/constants.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Activity', showSuffixIcon: false),
      body: Column(children: [
        const SearchBox(showFilterButton: false, isHome: false),
        SelectableButtons(
            buttonList: activityScreenSelectableButtonText, selectedIndex: 0)
      ]),
    );
  }
}
