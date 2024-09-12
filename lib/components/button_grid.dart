import 'package:flutter/material.dart';
import 'package:flutter_projects/components/button_grid_components.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  final List<String> texts = const [
    'Your Orders',
    'Buy Again',
    'Your Account',
    'Your Lists',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3,
      ),
      itemCount: texts.length,
      itemBuilder: (context, index) {
        final item = texts[index];
        return ButtonGridComponents(
          text: item,
        );
      },
    );
  }
}
