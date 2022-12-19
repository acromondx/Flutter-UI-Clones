// ignore_for_file: public_member_api_docs, sort_constructors_first

class Course {
  final String id;
  final String imageUrl;
  final String rating;
  final bool isBookmarked;
  final String courseTitle;
  final String instructor;
  final String price;
  final String duration;
  final String sectionsLength;
  final List sectionLaps;
  String description;
  List courseTag;

  Course(
      {required this.id,
      required this.imageUrl,
      required this.rating,
      required this.isBookmarked,
      required this.courseTitle,
      required this.instructor,
      required this.price,
      required this.duration,
      required this.sectionsLength,
      required this.sectionLaps,
      this.description = _description,
      required this.courseTag});
}

const _description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo';
