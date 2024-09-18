import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/cartPage/cart_page.dart';

class ImagePage extends StatefulWidget {
  final String imageUrl;

  const ImagePage({
    super.key,
    required this.imageUrl,
  });

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(widget.imageUrl),
            ElevatedButton(
              onPressed: () {
                isAdded
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CartPage(imageUrl: widget.imageUrl),
                        ),
                      )
                    : setState(() {
                        isAdded = !isAdded;
                      });
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                isAdded ? 'Go to cart' : 'Add to cart',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
