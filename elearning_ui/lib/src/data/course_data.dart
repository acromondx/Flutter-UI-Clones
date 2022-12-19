import 'package:flutter/material.dart';

import '../model/course.dart';

List sectionLaps = [
  ['Introduction to course', '20 min'],
  ['Dive in', '4h 40 min'],
  ['How to apply what you learned', '2h 20 min'],
  ['Outro', '40 min'],
];

List courseTags = [
  ['Hot', Colors.orange[900]],
  ['New', Colors.green[900]],
  ['Best Seller', Colors.deepPurple[900]],
  ['50% discount', Colors.pink[900]],
  ['Free', Colors.blue[900]],
];

final coursesData = [
  Course(
    id: '1',
    imageUrl: 'images/image1.jpeg',
    rating: '4.5',
    isBookmarked: false,
    courseTitle: 'Introduction to Programming',
    instructor: 'Matt Murdock',
    price: "\$120.00",
    duration: '5hr 30mins',
    sectionsLength: '14 Lessons',
    sectionLaps: sectionLaps,
    courseTag: courseTags[0],
  ),
  Course(
    id: '2',
    imageUrl: 'images/image2.jpg',
    rating: '4.2',
    isBookmarked: true,
    courseTitle: 'The Best Content Writing Course',
    instructor: 'Peter Parker',
    price: "\$99.00",
    duration: '12hr 10mins',
    sectionsLength: '32 Lessons',
    sectionLaps: sectionLaps,
    courseTag: courseTags[1],
  ),
  Course(
    id: '3',
    imageUrl: 'images/image3.jpg',
    rating: '3.9',
    isBookmarked: true,
    courseTitle: 'Build Your own Self Driving Car',
    instructor: 'Loki Laufeyson',
    price: "\$120.00",
    duration: '4hr 30mins',
    sectionsLength: '5 Lessons',
    sectionLaps: sectionLaps,
    courseTag: courseTags[2],
  ),
  Course(
    id: '4',
    imageUrl: 'images/image4.jpg',
    rating: '4.0',
    isBookmarked: false,
    courseTitle: 'The Ultimate Acrylic Painting Course',
    instructor: 'Bruce Banner',
    price: "\$220.00",
    duration: '39hr 30mins',
    sectionsLength: '42 Lessons',
    sectionLaps: sectionLaps,
    courseTag: courseTags[3],
  ),
  Course(
    id: '5',
    imageUrl: 'images/image5.jpg',
    rating: '4.2',
    isBookmarked: true,
    courseTitle: 'The Complete Cyber Security Course',
    instructor: 'Stephen Strange',
    price: "\$220.00",
    duration: '24hr 50mins',
    sectionsLength: '37 Lessons',
    sectionLaps: sectionLaps,
    courseTag: courseTags[4],
  ),
];
