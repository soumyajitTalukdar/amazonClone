import 'package:flutter/material.dart';
import 'package:flutter_projects/components/bottom_navigation.dart';
import 'package:flutter_projects/pages/cartPage/cart_page.dart';
import 'package:flutter_projects/pages/homePage/home_page.dart';
import 'package:flutter_projects/pages/menuPage/menu_page.dart';
import 'package:flutter_projects/pages/youPage/profile_page.dart';

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
    ProfilePage(),
    const CartPage(imageUrl: 'https://example.com/placeholder.jpg'),
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
