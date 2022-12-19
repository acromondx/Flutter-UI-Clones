// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../components/category_icon.dart';
import '../../components/courses_slider.dart';
import '../../components/info_chip.dart';
import '../../components/search_box.dart';
import '../../components/verticalbar_decoration.dart';
import '../../data/category_data.dart';
import '../../theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: SizedBox(
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
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(7),
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 2,
                                  blurStyle: BlurStyle.outer,
                                ),
                              ],
                            ),
                            child: const Icon(
                              IconlyLight.notification,
                              size: 26,
                            )),
                        Positioned(
                          top: 0,
                          right: 2,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
      body: ListView(children: [
        Column(children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[100],
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
                  const CoursesSlider(),
                  const SizedBox(height: 10),
                  VerticalBarDecoration(title: 'Trending courses'),
                  const CoursesSlider(isReversed: true),
                ],
              ),
            ),
          )
        ]),
      ]),
    );
  }
}
