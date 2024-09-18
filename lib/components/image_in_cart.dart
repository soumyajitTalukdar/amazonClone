import 'package:flutter/material.dart';

class ImageInCart extends StatelessWidget {
  final String imageUrl;

  // final String imageDesc;

  const ImageInCart({
    super.key,
    required this.imageUrl,
    // required this.imageDesc;
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      width: 175,
      child: Image.network(imageUrl),
    );
  }
}
