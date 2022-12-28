// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../data/job_data.dart';
import '../../shared_components/custom_appbar.dart';
import '../../shared_components/selectable_buttons.dart';
import 'components/saved_job_card.dart';

class SavedJobsScreen extends StatelessWidget {
  const SavedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline1;

    final savedJobs = jobsData.where((job) => job.isSaved == true).toList();

    return Scaffold(
      appBar: CustomAppBar(title: 'Saved', showSuffixIcon: false),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  'You saved ${savedJobs.length} jobs',
                  style: textStyle!.copyWith(fontSize: 22),
                ),
                const SizedBox(height: 20),
                SelectableButtons(
                  buttonList: savedScreenSelectableButtonText,
                  selectedIndex: 1,
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: savedJobs.length,
            itemBuilder: (BuildContext context, int index) {
              return SavedJobCard(
                id: savedJobs[index].id,
                type: savedJobs[index].type,
                title: savedJobs[index].title,
                isBookmarked: savedJobs[index].isSaved,
                location: savedJobs[index].location,
                imageUrl: savedJobs[index].imageUrl,
                imageBackground: savedJobs[index].imageBackground,
              );
            },
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
