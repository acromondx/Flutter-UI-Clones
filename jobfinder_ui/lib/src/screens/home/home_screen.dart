// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../data/category_data.dart';
import '../../data/job_data.dart';
import '../../shared_components/custom_appbar.dart';
import '../../shared_components/searchbox.dart';
import '../../shared_components/verticalbar_decoration.dart';
import '../../theme/colors.dart';
import 'components/category_icon.dart';
import 'components/recent_job_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Hi, Gideon',
        suffixIcon: IconlyBold.notification,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SearchBox(),
              const SizedBox(height: 10),
              VerticalBar(title: 'Tips for you'),
              const SizedBox(height: 10),
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How to create a\nperfect cv for you',
                          style: textStyle!
                              .copyWith(fontSize: 20, color: Colors.grey[50]),
                        ),
                        const SizedBox(height: 10),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          onPressed: () {},
                          color: Colors.white,
                          child: Text(
                            'Details',
                            style: textStyle.copyWith(
                                fontSize: 17,
                                color: primaryColor.withOpacity(0.8)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: -2,
                    right: 24,
                    child: CircleAvatar(
                      backgroundColor: primaryColor.withOpacity(0.5),
                      radius: 70,
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    right: 0,
                    // alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'assets/images/image2.png',
                      width: 180,
                      height: 200,
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 20),
              VerticalBar(title: 'Category'),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
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
              VerticalBar(title: 'Recent Jobs'),
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
                    isSaved: jobsData[index].isSaved,
                    location: jobsData[index].location,
                    imageUrl: jobsData[index].imageUrl,
                    imageBackground: jobsData[index].imageBackground,
                  );
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ]),
    );
  }
}
