// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';

import 'package:jobfinder_ui/src/theme/colors.dart';

class SegmentedSlider extends StatefulWidget {
  const SegmentedSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<SegmentedSlider> createState() => _SegmentedSliderState();
}

class _SegmentedSliderState extends State<SegmentedSlider> {
  static int initialValue = 0;

  final Map<int, Widget> section = <int, Widget>{
    0: Text(
      'Requirements',
      textAlign: TextAlign.center,
      style: const TextStyle().copyWith(
          color: Colors.grey[800], fontSize: 17, fontWeight: FontWeight.bold),
    ),
    1: Text(
      'About',
      textAlign: TextAlign.center,
      style: const TextStyle().copyWith(
          color: Colors.grey[800], fontSize: 17, fontWeight: FontWeight.bold),
    ),
  };

  static const jobRequirements = [
    'Bachelor\'s degree or equivalent experience in Computer Science or related field',
    'Experience maintaining excellent Technical Documentation',
    'Understanding of REST APIs, the document request model, and offline storage',
    'Deep experience with Github, automation and Unit Testing (TDD and BDD)',
    'Experience porting open source libraries from Linux to Nucleus',
    'Bonus qualifications include experience in any, or all, of the following (none required):'
  ];

  static const aboutText =
      """\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
        \ncupidatat non proident, sunt in culpa qui  labore et dolore magna aliqua. officia deserunt mollit labore et dolore magna aliqua. anim id est laborum.""";

  @override
  Widget build(BuildContext context) {
    List<Widget> sectionContent = [
      ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: jobRequirements.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            minLeadingWidth: 2,
            leading: Text(
              '•',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 18),
            ),
            title: Text(
              jobRequirements[index],
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 14),
            ),
          );
        },
      ),
      Text(
        aboutText,
        style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 14),
      ),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        CustomSlidingSegmentedControl<int>(
          padding: 4,
          innerPadding: const EdgeInsets.all(1),
          curve: Curves.linear,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(12),
          ),
          thumbDecoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
            // boxShadow: [
            //   BoxShadow(
            //     color: const Color(0xff17bec7).withOpacity(0.2),
            //     blurRadius: 4.0,
            //     spreadRadius: 1.0,
            //     offset: const Offset(
            //       0.0,
            //       2.0,
            //     ),
            //   ),
            // ],
          ),
          initialValue: initialValue,
          isStretch: true,
          children: section,
          onValueChanged: (changeFromGroupValue) {
            setState(() {
              initialValue = changeFromGroupValue;
            });
          },
        ),
        sectionContent[initialValue],
      ],
    );
  }
}
