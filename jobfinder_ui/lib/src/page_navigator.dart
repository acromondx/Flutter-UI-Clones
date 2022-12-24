import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:jobfinder_ui/src/screens/activity_screen.dart';
import 'package:jobfinder_ui/src/screens/home_screen.dart';
import 'package:jobfinder_ui/src/screens/profile_screen.dart';
import 'package:jobfinder_ui/src/screens/saved_jobs_screen.dart';

class PageNavigator extends StatefulWidget {
  const PageNavigator({super.key});

  @override
  PageNavigatorState createState() => PageNavigatorState();
}

class PageNavigatorState extends State<PageNavigator> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    const Home(),
    const ActivityScreen(),
    const SavedJobsScreen(),
    const ProfileScreen(),
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.home),
              activeIcon: Icon(IconlyBold.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.activity),
              activeIcon: Icon(IconlyBold.activity),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.bookmark),
              activeIcon: Icon(IconlyBold.bookmark),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile),
              activeIcon: Icon(IconlyBold.profile),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

//  Container(                                             
//   decoration = const BoxDecoration(                                                   
//     borderRadius: BorderRadius.only(                                           
//       topRight: Radius.circular(30), topLeft: Radius.circular(30)),            
//     boxShadow: [                                                               
//       BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),       
//     ],                                                                         
//   ),                                                                           
//   child = ClipRRect(                                                            
//     borderRadius: const BorderRadius.only(                                           
//     topLeft: Radius.circular(30.0),                                            
//     topRight: Radius.circular(30.0),                                           
//     ),                                                                         
//     child: BottomNavigationBar(                                                
//       items: const <BottomNavigationBarItem>[                                        
//         BottomNavigationBarItem(                                               
//           icon: Icon(Icons.favorite), label: Text('Favourite')),               
//         BottomNavigationBarItem(                                               
//           icon: Icon(Icons.favorite), label: Text('Favourite'))                
//       ],                                                                       
//     ),                                                                         
//   )                                                                            
// )