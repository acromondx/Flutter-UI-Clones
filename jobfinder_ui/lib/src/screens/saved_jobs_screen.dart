// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:jobfinder_ui/src/components/custom_appbar.dart';

import '../components/bookmarked_job_card.dart';
import '../data/job_data.dart';

class SavedJobsScreen extends StatelessWidget {
  const SavedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline1;
    List bookmarkedJobs = [];
    for (var job in jobsData) {
      if (job.isBookmarked == true) {
        bookmarkedJobs.add(job);
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: AppBarIcon(icon: Icons.grid_view_rounded),
        ),
        title: const Text('Bookmarks'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'You saved ${bookmarkedJobs.length} jobs',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20),
            ),
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return Container(
                height: 5,
                color: Colors.grey[50],
              );
            },
            shrinkWrap: true,
            itemCount: bookmarkedJobs.length,
            itemBuilder: (BuildContext context, int index) {
              return BookmarkedJobCard(
                id: bookmarkedJobs[index].id,
                type: bookmarkedJobs[index].type,
                title: bookmarkedJobs[index].title,
                isBookmarked: bookmarkedJobs[index].isBookmarked,
                location: bookmarkedJobs[index].location,
                imageUrl: bookmarkedJobs[index].imageUrl,
                imageBackground: bookmarkedJobs[index].imageBackground,
              );
            },
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
