// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:elearning_ui/theme/colors.dart';

import '../../data/category_data.dart';
import '../../data/course_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: coursesData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CourseInfoCard(
                          rating: coursesData[index].rating,
                          title: coursesData[index].courseTitle,
                          subtitle: coursesData[index].subtitle,
                          price: coursesData[index].price,
                          imageUrl: coursesData[index].imageUrl,
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

class InfoChip extends StatelessWidget {
  final String title;
  final Color titleColor;
  const InfoChip({
    Key? key,
    required this.title,
    required this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: titleColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          " $title ",
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: titleColor, fontSize: 10),
        ));
  }
}

class VerticalBarDecoration extends StatelessWidget {
  final String title;
  Widget child;
  VerticalBarDecoration({
    Key? key,
    required this.title,
    this.child = const SizedBox(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textBaseline: TextBaseline.ideographic,
      children: [
        Row(
          children: [
            Text(title, style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              width: 6,
            ),
            child,
          ],
        ),
        Text(
          "..",
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 50),
        )
      ],
    );
  }
}

class CategoryIcons extends StatelessWidget {
  final String emoji;
  final String title;
  const CategoryIcons({
    Key? key,
    required this.emoji,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(children: [
        Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(
              emoji,
              style: const TextStyle(fontSize: 25),
            ))),
        const SizedBox(height: 5),
        Text(
          title,
          softWrap: true,
          overflow: TextOverflow.fade,
          maxLines: 12,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 13),
        )
      ]),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context)
          .textTheme
          .headline1!
          .copyWith(fontSize: 18, fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        filled: true,
        border: InputBorder.none,
        fillColor: Colors.white,
        suffixIcon: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: deepGreen, borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            "images/search.svg",
            color: Colors.white,
          ),
        ),
        hintText: 'Search courses...',
      ),
    );
  }
}

class CourseInfoCard extends StatelessWidget {
  final String imageUrl;
  final String rating;
  final String title;
  final String subtitle;
  final String price;
  Widget child;
  CourseInfoCard({
    Key? key,
    required this.imageUrl,
    required this.rating,
    required this.title,
    required this.subtitle,
    required this.price,
    this.child = const SizedBox(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 8.0, right: 5.0),
              constraints:
                  const BoxConstraints.expand(height: 150.0, width: 250),
              padding:
                  const EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.brown.withOpacity(0.2),
                    BlendMode.colorBurn,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0.0,
                    top: 10.0,
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text(
                              rating,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                    fontSize: 15,
                                  ),
                            ),
                            Icon(Icons.star, size: 15, color: Colors.amber[800])
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    top: 10.0,
                    child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 15,
                          ),
                        )),
                  ),
                ],
              )),
          Text(
            title,
            style:
                Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
          ),
          Text(
            subtitle,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 12, color: Colors.grey[600]),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                price,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: deepGreen),
              ),
              const SizedBox(width: 5),
              child
            ],
          )
        ],
      ),
    );
  }
}
