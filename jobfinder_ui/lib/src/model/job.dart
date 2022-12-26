// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

enum JobType {
  fullTime('Full-Time'),
  partTime('Part-Time'),
  contract('Contract');

  const JobType(this.text);
  final String text;
}

class Job {
  final int id;
  final String imageUrl;
  final Color imageBackground;
  final String company;
  final String location;
  final String title;
  final JobType type;
  final bool isSaved;
  final String salary;
  final List<String> requirements;
  Job({
    required this.id,
    required this.imageUrl,
    required this.imageBackground,
    required this.company,
    required this.location,
    required this.title,
    required this.type,
    required this.isSaved,
    required this.salary,
    required this.requirements,
  }) : assert(id >= 1);
}
