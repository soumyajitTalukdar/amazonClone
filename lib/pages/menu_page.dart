import 'package:flutter/material.dart';
import 'package:flutter_projects/components/appbar_component.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppbarComponent(),
      body: Center(
        child: Text('This is the menu page'),
      ),
    );
  }
}
