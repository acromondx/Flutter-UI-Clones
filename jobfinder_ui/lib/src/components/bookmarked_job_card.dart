import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../model/job.dart';
import '../screens/job_detail_screen.dart';
import '../theme/colors.dart';
import 'company_logo.dart';
import 'info_chip.dart';

class BookmarkedJobCard extends StatelessWidget {
  final String id;
  final JobType type;
  final String title;
  final bool isBookmarked;
  final String location;
  final String imageUrl;
  final Color imageBackground;
  const BookmarkedJobCard({
    Key? key,
    required this.id,
    required this.type,
    required this.title,
    required this.isBookmarked,
    required this.location,
    required this.imageUrl,
    required this.imageBackground,
  }) : super(key: key);

  // final TextStyle? textStyle;
  void selectJob(BuildContext context) {
    Navigator.of(context).pushNamed(
      JobDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2!;

    return GestureDetector(
      onTap: (() => selectJob(context)),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
                leading: CompanyLogo(
                  imageBackground: imageBackground,
                  imageUrl: imageUrl,
                  size: 40,
                ),
                title: Text(
                  title,
                  style: textStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(IconlyBold.bookmark, color: primaryColor),
                subtitle: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      IconlyLight.location,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      location,
                      style: textStyle.copyWith(fontSize: 13),
                    ),
                    const SizedBox(width: 10),
                    const Icon(IconlyLight.bag_2, size: 16),
                    const SizedBox(width: 5),
                    Text(
                      type.text,
                      style: textStyle.copyWith(fontSize: 13),
                    )
                  ],
                )),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoChip(title: 'Open', titleColor: Colors.green[600]!),
                  InfoChip(
                      title: '${Random().nextInt(10) + 1} hours ago',
                      titleColor: Colors.grey[800]!),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
