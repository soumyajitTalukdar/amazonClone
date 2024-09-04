import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'You',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.layers),
          label: 'More',
        ),
      ],
      selectedItemColor: const Color.fromARGB(210, 65, 200, 180),
      unselectedItemColor: Colors.black54,
      showUnselectedLabels: true,
    );
  }
}
