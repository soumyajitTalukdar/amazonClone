import 'package:flutter/material.dart';
import 'package:flutter_projects/components/bottom_navigation.dart';
import 'package:flutter_projects/pages/cart_page.dart';
import 'package:flutter_projects/pages/home_page.dart';
import 'package:flutter_projects/pages/menu_page.dart';
import 'package:flutter_projects/pages/profile_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    const ProfilePage(),
    const Center(
      child: Text('Stay tuned for further updates'),
    ),
    const CartPage(),
    const MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onItemTapped, // Handle tap on bottom navigation items
      ),
    );
  }
}
