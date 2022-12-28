// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';

import 'package:jobfinder_ui/src/theme/colors.dart';

import '../../../constants.dart';
import '../../../data/job_data.dart';

class SegmentedSlider extends StatefulWidget {
  const SegmentedSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<SegmentedSlider> createState() => _SegmentedSliderState();
}

class _SegmentedSliderState extends State<SegmentedSlider> {
  static int initialValue = 0;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2!;

    final Map<int, Widget> section = <int, Widget>{
      0: Text(
        'Requirements',
        textAlign: TextAlign.center,
        style: textStyle.copyWith(
            fontWeight: FontWeight.w800, fontSize: 17, color: Colors.grey[900]),
      ),
      1: Text(
        'About',
        textAlign: TextAlign.center,
        style: textStyle.copyWith(
            fontWeight: FontWeight.w800, fontSize: 17, color: Colors.grey[900]),
      ),
    };

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
              style: textStyle.copyWith(fontSize: 18),
            ),
            title: Text(
              jobRequirements[index],
              style: textStyle.copyWith(fontSize: 14),
            ),
          );
        },
      ),
      Text(
        loremText,
        textAlign: TextAlign.justify,
        style: textStyle.copyWith(fontSize: 14),
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
