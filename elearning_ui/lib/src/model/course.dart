// ignore_for_file: public_member_api_docs, sort_constructors_first
class Course {
  final String id;
  final String imageUrl;
  final String rating;
  final bool isBookmarked;
  final String courseTitle;
  final String subtitle;
  final String price;
  final String duration;
  final String sections;
  final String description;
  const Course({
    required this.id,
    required this.imageUrl,
    required this.rating,
    required this.isBookmarked,
    required this.courseTitle,
    required this.subtitle,
    required this.price,
    required this.duration,
    required this.sections,
    required this.description,
  });
}
