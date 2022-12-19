// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../data/course_data.dart';

class CourseDetailScreen extends StatelessWidget {
  static const routeName = '/course-detail-screen';

  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContainer(Widget child) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 150,
        width: 300,
        child: child,
      );
    }

    final textStyle = Theme.of(context).textTheme.headline1;

    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedCourse =
        coursesData.firstWhere((course) => course.id == courseId);

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        centerTitle: true,
        leading: RoundedIcon(
          color: Colors.black,
          ontap: () {
            Navigator.pop(context);
          },
          icon: IconlyLight.arrow_left,
        ),
        title: Text(
          'Course Details',
          style: textStyle!.copyWith(fontSize: 23, fontWeight: FontWeight.w800),
        ),
        actions: [
          RoundedIcon(
            icon: (selectedCourse.isBookmarked)
                ? IconlyBold.heart
                : IconlyLight.heart,
          ),
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseImage(imageUrl: selectedCourse.imageUrl),
              Text(
                selectedCourse.courseTitle,
                style: textStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 5),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(IconlyLight.time_circle,
                      size: 19, color: Colors.grey[800]),
                  const SizedBox(width: 5),
                  Text(selectedCourse.duration,
                      style: textStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                  const SizedBox(width: 5),
                  const Text('  •  '),
                  Text(selectedCourse.sectionsLength,
                      style: textStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                  const SizedBox(width: 5),
                  const Text('  •  '),
                  Text(selectedCourse.rating,
                      style: textStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                  Icon(IconlyBold.star, size: 15, color: Colors.yellow[800]),
                ],
              ),
              const SizedBox(height: 10),
              Text('About Course',
                  style: textStyle.copyWith(fontWeight: FontWeight.w800)),
              const SizedBox(height: 5),

              Text(
                selectedCourse.description,
                style: textStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 5),
              Text('Lessons',
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w800,
                  )),
              const SizedBox(height: 5),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: selectedCourse.sectionLaps.length,
                itemBuilder: (BuildContext context, int index) {
                  final sectionLaps = selectedCourse.sectionLaps[index];
                  return LessonsTile(
                    title: sectionLaps[0],
                    duration: sectionLaps[1],
                  );
                },
              ),
              const SizedBox(height: 90),
              // buildContainer(
              //   ListView.builder(
              //     itemBuilder: (ctx, index) => Column(
              //       children: [
              //         ListTile(
              //           leading: CircleAvatar(
              //             child: Text('# ${(index + 1)}'),
              //           ),
              //           title: Text(
              //             selectedCourse.sectionLaps[index],
              //           ),
              //         ),
              //         const Divider()
              //       ],
              //     ),
              //     itemCount: selectedCourse.sectionLaps.length,
              //   ),
              // ),
            ],
          ),
        ),
      ]),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Buy course for ${selectedCourse.price}',
              style: textStyle.copyWith(color: Colors.white, fontSize: 17),
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class LessonsTile extends StatelessWidget {
  final String title;
  final String duration;
  const LessonsTile({
    Key? key,
    required this.title,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline1;

    return Container(
      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurStyle: BlurStyle.outer,
          )
        ],
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: ListTile(
        onTap: () {},
        // tileColor: Colors.amber[600],
        leading: Container(
          width: 60,
          height: 60,
          color: Colors.grey[200],
        ),
        title: Text(
          title,
          style: textStyle!.copyWith(fontSize: 18),
        ),
        subtitle: Row(
          children: [
            const Icon(
              IconlyLight.time_circle,
              size: 16,
              color: Colors.pink,
            ),
            const SizedBox(width: 3),
            Text(duration),
          ],
        ),
        trailing: const Icon(IconlyLight.arrow_right_2, color: Colors.black),
      ),
    );
  }
}

class RoundedIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function()? ontap;
  const RoundedIcon({
    Key? key,
    required this.icon,
    this.color = Colors.red,
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
              child: Center(
                  child: Icon(
                icon,
                color: color,
              )),
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
            CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.6), radius: 16),
            Icon(
              IconlyBold.play,
              color: Colors.red.shade700.withOpacity(0.8),
              size: 90,
            ),
            // Icon(Icons.play_arrow)
          ],
        ));
  }
}
