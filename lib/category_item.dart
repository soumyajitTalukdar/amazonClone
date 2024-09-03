import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Colors.white,
            height: 75,
            width: 75,
            child: Image.network(
              "https://th.bing.com/th/id/OIP.qTiNdQtdf2_9XAt3sWSAjgHaFv?rs=1&pid=ImgDetMain",
              fit: BoxFit.cover,
              // height: 50,
            )),
        const Text(
          'Grocery',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
