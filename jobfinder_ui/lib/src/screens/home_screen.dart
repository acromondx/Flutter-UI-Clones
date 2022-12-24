// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:jobfinder_ui/src/components/custom_appbar.dart';

import 'package:jobfinder_ui/src/components/verticalbar_decoration.dart';
import 'package:jobfinder_ui/src/data/job_data.dart';
import 'package:jobfinder_ui/src/theme/colors.dart';

import '../components/category_icon.dart';
import '../components/recent_job_card.dart';
import '../data/category_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        prefixIcon: Icons.grid_view_rounded,
        title: 'Hi, Gideon',
        suffixIcon: IconlyBold.notification,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              VerticalBarDecoration(title: 'Tips for you'),
              const SizedBox(height: 10),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('How to create a\n perfect cv for you')
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              VerticalBarDecoration(title: 'Category'),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryIcons(
                      iconColor: categoryData[index].iconColor,
                      title: categoryData[index].category,
                      icon: categoryData[index].icon,
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              VerticalBarDecoration(title: 'Recent Jobs'),
              const SizedBox(height: 20),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                shrinkWrap: true,
                itemCount: jobsData.length,
                itemBuilder: (BuildContext context, int index) {
                  return RecentJobCard(
                    id: jobsData[index].id,
                    type: jobsData[index].type,
                    title: jobsData[index].title,
                    isBookmared: jobsData[index].isBookmarked,
                    location: jobsData[index].location,
                    imageUrl: jobsData[index].imageUrl,
                    imageBackground: jobsData[index].imageBackground,
                  );
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ]),
    );
  }
}
