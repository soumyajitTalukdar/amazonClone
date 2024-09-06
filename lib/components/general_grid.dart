import 'package:flutter/material.dart';

class GeneralGrid extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image':
          'https://th.bing.com/th/id/OIP.o7uPpI_22-xdpH8cC8ZmpQHaHa?rs=1&pid=ImgDetMain',
      'text': 'Up to 40% off | Mobiles & Accessories',
    },
    {
      'image':
          'https://thegadgetflow.com/wp-content/uploads/2019/03/HP-Chromebook-14-AMD-Laptop-0001.jpg',
      'text': 'Up to 70% off | Laptops, Tablets & more',
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.5-DifFfjZH3PPym9FRiYGgAAAA?rs=1&pid=ImgDetMain',
      'text': 'Up to 65% off | Home Appliances',
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.t6FQsL3ntKtlIvQK1VwhfgAAAA?rs=1&pid=ImgDetMain',
      'text': 'Starting at Rs. 5.499 | Smart TVs',
    },
  ];

  GeneralGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0, // Horizontal space between items
          mainAxisSpacing: 8.0, // Vertical space between items
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GridTile(
            child: Column(
              children: [
                Image.network(
                  items[index]['image']!,
                  width: 125,
                  height: 125,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10.0),
                Text(
                  items[index]['text']!,
                  style: const TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
