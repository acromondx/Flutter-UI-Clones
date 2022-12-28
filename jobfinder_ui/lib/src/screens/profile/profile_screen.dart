// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';

import '../../constants.dart';
import '../../shared_components/custom_appbar.dart';
import '../../shared_components/verticalbar_decoration.dart';
import '../../theme/colors.dart';
import 'components/employment_tile.dart';
import 'components/infobox.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profile',
        suffixIcon: IconlyBold.edit,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            CircleAvatar(
              radius: 80,
              child: ClipOval(child: Image.asset('assets/images/abraham.jpg')),
            ),
            Text('Gideon Acromond',
                style: textStyle!
                    .copyWith(fontSize: 24, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Mobile Engineer',
                    style: textStyle.copyWith(fontSize: 15)),
                SvgPicture.asset('assets/svg/other/verify.svg',
                    color: primaryColor),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                InfoBox(text: '36', subtext: 'Applied'),
                InfoBox(text: '12', subtext: 'Reviewed'),
                InfoBox(text: '19', subtext: 'Interviews'),
              ],
            ),
            const SizedBox(height: 10),
            VerticalBar(title: 'About Me', trailing: ''),
            Text(
              loremText.substring(0, 180),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
            VerticalBar(title: 'My Experience', trailing: 'Add New'),
            const SizedBox(height: 20),
            const EmploymentTile(
              role: 'Staff Engineer - Google',
              period: 'April, 2022 - Present',
            ),
            const EmploymentTile(
              role: 'Senior Engineer - Yahoo',
              period: 'April, 2017 - April, 2022',
            ),
            const EmploymentTile(
              role: 'Data Scientist Engineer - IBM',
              period: 'Apirl, 2008 - June, 2017',
            ),
          ]),
        ),
      ),
    );
  }
}
