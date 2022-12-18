// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:badges/badges.dart';
import 'package:elearning_ui/components/category_icon.dart';
import 'package:elearning_ui/components/course_infocard.dart';
import 'package:elearning_ui/components/info_chip.dart';
import 'package:elearning_ui/components/search_box.dart';
import 'package:elearning_ui/components/verticalbar_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:elearning_ui/theme/colors.dart';

import '../../data/category_data.dart';
import '../../data/course_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Gideon!",
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 25),
                        ),
                        Text(
                          "Invest in your knowledge today",
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    Badge(
                      child: SvgPicture.asset(
                        "images/notification.svg",
                      ),
                    )
                  ]),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SearchBox(),
                  VerticalBarDecoration(title: 'Popular Categories'),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CategoryIcons(
                          title: categoryData[index].category,
                          emoji: categoryData[index].emoji,
                        );
                      },
                    ),
                  ),
                  VerticalBarDecoration(
                    title: 'Courses For You',
                    child:
                        InfoChip(title: 'Your Topics', titleColor: deepGreen),
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: coursesData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CourseInfoCard(
                          id: coursesData[index].id,
                          rating: coursesData[index].rating,
                          title: coursesData[index].courseTitle,
                          subtitle: coursesData[index].subtitle,
                          price: coursesData[index].price,
                          imageUrl: coursesData[index].imageUrl,
                          isBookmarked: coursesData[index].isBookmarked,
                          child: const InfoChip(
                              title: '50% discount', titleColor: Colors.pink),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ]),
    );
  }
}
