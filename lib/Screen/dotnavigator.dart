import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myverse/Screen/connection_screen.dart';
import 'package:myverse/Screen/home_screen.dart';
import 'package:myverse/Screen/myverse_screen.dart';
import 'package:myverse/Screen/search_screen.dart';
import 'package:myverse/Screen/today.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedTab = 0;
  final List<Widget> _showscreen = [
    const HomeScreen(),
    const SearchScreen(),
    const MyverseScreen(),
    const ConnectionScreen(),
    const TodayScreen(),
  ];

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _showscreen[_selectedTab],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: const EdgeInsets.only(left: 10, right: 10),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          enableFloatingNavBar: true,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: const Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.favorite),
              selectedColor: const Color(0xff73544C),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.search),
              selectedColor: const Color(0xff73544C),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: const Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }
}
