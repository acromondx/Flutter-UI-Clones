// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';

import 'package:jobfinder_ui/src/components/custom_appbar.dart';
import 'package:jobfinder_ui/src/components/verticalbar_decoration.dart';
import 'package:jobfinder_ui/src/theme/colors.dart';

import '../components/light_icon_box.dart';
import '../constants.dart';

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
              backgroundColor: Colors.red,
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
            VerticalBarDecoration(title: 'About Me', trailing: ''),
            Text(
              loremText.substring(0, 180),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 10),
            VerticalBarDecoration(title: 'My Experience', trailing: 'Add New'),
            const SizedBox(height: 20),
            EmploymentTile(textStyle: textStyle),
            EmploymentTile(textStyle: textStyle),
            EmploymentTile(textStyle: textStyle)
          ]),
        ),
      ),
    );
  }
}

class EmploymentTile extends StatelessWidget {
  const EmploymentTile({
    Key? key,
    required this.textStyle,
  }) : super(key: key);

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: LightIconBox(
        showTitle: false,
        icon: 'assets/svg/other/briefcase.svg',
      ),
      title: Text('Upworker', style: textStyle!.copyWith(fontSize: 20)),
      subtitle: Text('data', style: textStyle!.copyWith(fontSize: 15)),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String text;
  final String subtext;
  const InfoBox({
    Key? key,
    required this.text,
    required this.subtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2;

    return Container(
      height: 80,
      width: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3, color: Colors.grey[50]!),
      ),
      child: Column(children: [
        Text(text,
            style:
                textStyle!.copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Text(subtext, style: textStyle.copyWith(fontSize: 15)),
      ]),
    );
  }
}
