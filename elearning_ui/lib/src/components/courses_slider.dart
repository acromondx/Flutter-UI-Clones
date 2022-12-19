import 'package:flutter/material.dart';

import '../data/course_data.dart';
import 'course_infocard.dart';

class CoursesSlider extends StatelessWidget {
  final bool isReversed;
  const CoursesSlider({
    Key? key,
    this.isReversed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        reverse: isReversed,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: coursesData.length,
        itemBuilder: (BuildContext context, int index) {
          return CourseInfoCard(
            id: coursesData[index].id,
            rating: coursesData[index].rating,
            title: coursesData[index].courseTitle,
            instructor: coursesData[index].instructor,
            price: coursesData[index].price,
            imageUrl: coursesData[index].imageUrl,
            isBookmarked: coursesData[index].isBookmarked,
            infoChipTitle: coursesData[index].courseTag[0],
            infoChipColor: coursesData[index].courseTag[1],
            // child: InfoChip(
            //     title: coursesData[index].courseTag[0][0],
            //     titleColor: coursesData[index].courseTag[0][1]),
          );
        },
      ),
    );
  }
}
