import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String imageUrl;

  ImagePage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(imageUrl),
      ),
    );
  }
}
