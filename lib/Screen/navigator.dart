import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myverse/Screen/connection_screen.dart';
import 'package:myverse/Screen/home_screen.dart';
import 'package:myverse/Screen/myverse_screen.dart';
import 'package:myverse/Screen/today.dart';
import 'package:myverse/Screen/search_screen.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const MyverseScreen(),
    const ConnectionScreen(),
    const TodayScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          buttonBackgroundColor: Theme.of(context).cardColor,
          height: 45,
          color: Theme.of(context).cardColor,
          animationDuration: const Duration(milliseconds: 300),
          items: const [
            Icon(
              Icons.home_rounded,
              size: 30,
            ),
            Icon(
              Icons.search_rounded,
              size: 30,
            ),
            ImageIcon(
              AssetImage('assets/images/Logo_icon.png'),
              size: 30,
            ),
            Icon(
              Icons.people_alt_outlined,
              size: 30,
            ),
            Icon(
              Icons.task_alt_rounded,
              size: 30,
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
