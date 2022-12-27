import 'package:jobfinder_ui/src/data/category_data.dart';

const activityScreenSelectableButtonText = [
  'All',
  'Accepted',
  'Interview',
  'Pending',
  'Rejected'
];
final savedScreenSelectableButtonText = [
  'All',
  ...categoryData.map((category) => category.category)
];

const loremText =
    """\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
        \ncupidatat non proident, sunt in culpa qui  labore et dolore magna aliqua. officia deserunt mollit labore et dolore magna aliqua. anim id est laborum.""";
