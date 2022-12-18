// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:elearning_ui/screens/course_detail/course_detail_screen.dart';
import 'package:elearning_ui/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseInfoCard extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String rating;
  final String title;
  final String subtitle;
  final String price;
  final bool isBookmarked;
  Widget child;
  CourseInfoCard({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.rating,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isBookmarked,
    this.child = const SizedBox(),
  }) : super(key: key);

  void selectCourse(BuildContext context) {
    Navigator.of(context).pushNamed(
      CourseDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => selectCourse(context)),
      splashColor: Colors.red.shade700,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin:
                    const EdgeInsets.only(top: 10.0, bottom: 8.0, right: 5.0),
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
                              Icon(Icons.star,
                                  size: 15, color: Colors.amber[800])
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: (isBookmarked)
                                ? SvgPicture.asset(
                                    "images/heart-filled.svg",
                                    color: Colors.red,
                                    height: 15,
                                    width: 15,
                                  )
                                : SvgPicture.asset(
                                    "images/heart.svg",
                                    color: Colors.red,
                                    height: 15,
                                    width: 15,
                                  ),
                            // child: (isBookmarked)
                            //     ? const Icon(Icons.favorite)
                            //     : const Icon(Icons.favorite_border),
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
      ),
    );
  }
}
