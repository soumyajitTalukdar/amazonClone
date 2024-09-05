import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String text;

  const CategoryItem({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Colors.white,
            height: 75,
            width: 75,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              // height: 50,
            )),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
