import 'package:flutter/material.dart';

import '../../../shared_components/light_icon_box.dart';

class EmploymentTile extends StatelessWidget {
  final String role;
  final String period;
  const EmploymentTile({
    Key? key,
    required this.role,
    required this.period,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2;

    return ListTile(
      leading: LightIconBox(
        showTitle: false,
        icon: 'assets/svg/other/briefcase.svg',
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 7),
        child: Text(role,
            style:
                textStyle!.copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      subtitle: Text(period, style: textStyle.copyWith(fontSize: 15)),
    );
  }
}
