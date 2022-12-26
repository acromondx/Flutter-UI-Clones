import 'package:jobfinder_ui/src/data/category_data.dart';

const activityScreenSelectableButtonText = [
  'All',
  'Accepted',
  'Interview',
  'Pending'
];
final savedScreenSelectableButtonText = [
  'All',
  ...categoryData.map((category) => category.category)
];

const loremText =
    """\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
        \ncupidatat non proident, sunt in culpa qui  labore et dolore magna aliqua. officia deserunt mollit labore et dolore magna aliqua. anim id est laborum.""";

const jobRequirements = [
  'Bachelor\'s degree or equivalent experience in Computer Science or related field',
  'Experience maintaining excellent Technical Documentation',
  'Understanding of REST APIs, the document request model, and offline storage',
  'Deep experience with Github, automation and Unit Testing (TDD and BDD)',
  'Experience porting open source libraries from Linux to Nucleus',
  'Bonus qualifications include experience in any, or all, of the following (none required):'
];
