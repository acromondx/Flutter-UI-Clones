// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../model/job.dart';
import '../screens/job_detail_screen.dart';
import 'company_logo.dart';
import 'svg_icon_mini.dart';

class RecentJobCard extends StatelessWidget {
  final int id;
  final String imageUrl;
  final Color imageBackground;
  final String title;
  final String location;
  final bool isSaved;
  final JobType type;

  const RecentJobCard({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.imageBackground,
    required this.title,
    required this.location,
    required this.isSaved,
    required this.type,
  }) : super(key: key);

  void selectJob(BuildContext context) {
    Navigator.of(context).pushNamed(
      JobDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2!;
    return InkWell(
      onTap: (() => selectJob(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CompanyLogo(
                imageBackground: imageBackground,
                size: 40,
                imageUrl: imageUrl,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 13),
                  Row(
                    children: [
                      const SvgIconMini(svg: 'location'),
                      Text(
                        ' $location',
                        style: textStyle.copyWith(fontSize: 13),
                      ),
                      const SizedBox(width: 10),
                      const SvgIconMini(svg: 'briefcase'),
                      Text(
                        ' ${type.text}',
                        style: textStyle.copyWith(fontSize: 13),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Icon(
                isSaved ? IconlyBold.bookmark : IconlyLight.bookmark,
                color: Colors.grey[700],
              ),
              const SizedBox(height: 10),
              Text('${(Random().nextInt(10) + 1).toString()}h')
            ],
          )
        ],
      ),
    );
  }
}
