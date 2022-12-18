// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:elearning_ui/data/course_data.dart';

class CourseDetailScreen extends StatelessWidget {
  static const routeName = '/course-detail-screen';

  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline1;
    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedCourse =
        coursesData.firstWhere((course) => course.id == courseId);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        leading: RoundedIcon(
          color: Colors.black,
          ontap: () {
            Navigator.pop(context);
          },
          iconPath: "images/arrow.svg",
        ),
        title: Text(
          'Course Details',
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 23),
        ),
        actions: [
          RoundedIcon(
              color: Colors.red,
              iconPath: (selectedCourse.isBookmarked)
                  ? "images/heart-filled.svg"
                  : "images/heart.svg"
              // icon: (selectedCourse.isBookmarked)
              //     ? const Icon(Icons.favorite)
              //     : const Icon(Icons.favorite_border),
              ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseImage(imageUrl: selectedCourse.imageUrl),
              Text(
                selectedCourse.courseTitle,
                style: textStyle!.copyWith(fontSize: 20),
              ),
              Row(
                children: [
                  Icon(Icons.timelapse_rounded,
                      size: 19, color: Colors.grey[800]),
                  const SizedBox(width: 5),
                  Text(selectedCourse.duration,
                      style: textStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                  const SizedBox(width: 5),
                  Text(selectedCourse.sections,
                      style: textStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                  const SizedBox(width: 5),
                  Text(selectedCourse.rating,
                      style: textStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                  const SizedBox(width: 5),
                  Icon(Icons.star, size: 19, color: Colors.yellow[800]),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Buy course for ${selectedCourse.price}',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.white, fontSize: 17),
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class RoundedIcon extends StatelessWidget {
  final String iconPath;
  final Color color;
  final Function()? ontap;
  const RoundedIcon({
    Key? key,
    required this.iconPath,
    required this.color,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(4.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.outer,
            )
          ],
        ),
        child: InkWell(
            onTap: ontap,
            splashColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(
                iconPath,
                color: color,
                height: 35,
                width: 35,
              ),
            )));
  }
}

class CourseImage extends StatelessWidget {
  final String imageUrl;
  const CourseImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10.0, bottom: 8.0, right: 5.0),
        constraints:
            const BoxConstraints.expand(height: 230.0, width: double.infinity),
        padding: const EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
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
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              "images/video.svg",
              color: Colors.red,
              height: 70,
              width: 70,
            ),
            // Icon(Icons.play_arrow)
          ],
        ));
  }
}
