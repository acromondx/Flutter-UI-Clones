import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'screens/course_detail/course_detail_screen.dart';
import 'screens/home/home_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    const HomeScreen(),
    const CourseDetailScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
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
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.play),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.buy),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.chat),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile),
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