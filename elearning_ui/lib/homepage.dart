import 'package:elearning_ui/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'theme/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    const Home(),
    const Home(),
    const Home(),
    const Home(),
    const Home(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
        child: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("images/home.svg", color: deepGreen),
              icon: SvgPicture.asset("images/home.svg"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon:
                  SvgPicture.asset("images/video-circle.svg", color: deepGreen),
              icon: SvgPicture.asset("images/video-circle.svg"),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("images/cart.svg", color: deepGreen),
              icon: SvgPicture.asset("images/cart.svg"),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              activeIcon:
                  SvgPicture.asset("images/message.svg", color: deepGreen),
              icon: SvgPicture.asset("images/message.svg"),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              activeIcon:
                  SvgPicture.asset("images/profile.svg", color: deepGreen),
              icon: SvgPicture.asset("images/profile.svg"),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
