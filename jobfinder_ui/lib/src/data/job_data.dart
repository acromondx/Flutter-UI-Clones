import 'package:flutter/material.dart';
import 'package:jobfinder_ui/src/model/job.dart';

const jobRequirements = [
  'Bachelor\'s degree or equivalent experience in Computer Science or related field',
  'Experience maintaining excellent Technical Documentation',
  'Understanding of REST APIs, the document request model, and offline storage',
  'Deep experience with Github, automation and Unit Testing (TDD and BDD)',
  'Experience porting open source libraries from Linux to Nucleus',
  'Bonus qualifications include experience in any, or all, of the following (none required):'
];

final jobsData = [
  Job(
    id: 1,
    imageUrl: 'assets/svg/company_logos/quora.svg',
    imageBackground: const Color(0xffb92b27),
    company: 'Quora',
    location: 'U.S.A',
    title: 'Data Scientist',
    type: JobType.partTime,
    isSaved: true,
    requirements: jobRequirements,
    salary: '20',
  ),
  Job(
    id: 2,
    imageUrl: 'assets/svg/company_logos/twitter.svg',
    imageBackground: const Color(0xff00acee),
    company: 'Twitter',
    location: 'Ghana',
    title: 'Product Designer',
    type: JobType.partTime,
    isSaved: false,
    requirements: jobRequirements,
    salary: '6',
  ),
  Job(
    id: 3,
    imageUrl: 'assets/svg/company_logos/wordpress.svg',
    imageBackground: const Color(0xff21759b),
    company: 'WordPress',
    location: 'Norway',
    title: 'PHP Developer',
    type: JobType.partTime,
    isSaved: true,
    requirements: jobRequirements,
    salary: '5',
  ),
  Job(
    id: 4,
    imageUrl: 'assets/svg/company_logos/reddit-alien.svg',
    imageBackground: const Color(0xffff4500),
    company: 'Reddit',
    location: 'North Korea',
    title: 'Javascript Guru',
    type: JobType.contract,
    isSaved: false,
    requirements: jobRequirements,
    salary: '3',
  ),
  Job(
    id: 5,
    imageUrl: 'assets/svg/company_logos/uber.svg',
    imageBackground: const Color.fromARGB(255, 0, 0, 0),
    company: 'Uber',
    location: 'Russia',
    title: 'Snr. Java Engineer',
    type: JobType.fullTime,
    isSaved: true,
    requirements: jobRequirements,
    salary: '10',
  ),
  Job(
    id: 6,
    imageUrl: 'assets/svg/company_logos/umbraco.svg',
    imageBackground: const Color(0xff3544b1),
    company: 'Umbraco',
    location: 'Norway',
    title: 'Backend Engineer',
    type: JobType.fullTime,
    isSaved: true,
    requirements: jobRequirements,
    salary: '10',
  ),
  Job(
    id: 7,
    imageUrl: 'assets/svg/company_logos/whatsapp.svg',
    imageBackground: const Color(0xff25D366),
    company: 'Whatsapp',
    location: 'India',
    title: 'Frontend Developer',
    type: JobType.fullTime,
    isSaved: false,
    requirements: jobRequirements,
    salary: '10',
  ),
  Job(
    id: 8,
    imageUrl: 'assets/svg/company_logos/facebook-f.svg',
    imageBackground: const Color(0xff3b5998),
    company: 'Facebook',
    location: 'India',
    title: 'Staff Engineer',
    type: JobType.fullTime,
    isSaved: false,
    requirements: jobRequirements,
    salary: '1',
  ),
  Job(
    id: 9,
    imageUrl: 'assets/svg/company_logos/yelp.svg',
    imageBackground: const Color(0xffff1a1a),
    company: 'Yelp',
    location: 'Nigeria',
    title: 'Mobile Engineer',
    type: JobType.fullTime,
    isSaved: false,
    requirements: jobRequirements,
    salary: '14',
  ),
  Job(
    id: 10,
    imageUrl: 'assets/svg/company_logos/sass.svg',
    imageBackground: const Color(0xffcc6699),
    company: 'Sass',
    location: 'Russia',
    title: 'Django Developer',
    type: JobType.partTime,
    isSaved: true,
    requirements: jobRequirements,
    salary: '4',
  ),
  Job(
    id: 11,
    imageUrl: 'assets/svg/company_logos/spotify.svg',
    imageBackground: const Color(0xff1db954),
    company: 'Spotify',
    location: 'Russia',
    title: 'Machine Learning Engineer',
    type: JobType.contract,
    isSaved: false,
    requirements: jobRequirements,
    salary: '8',
  )
];
