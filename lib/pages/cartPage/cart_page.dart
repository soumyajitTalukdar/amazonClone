import 'package:flutter/material.dart';
import 'package:flutter_projects/components/appbar_component.dart';
import 'package:flutter_projects/components/image_in_cart.dart';
import 'package:flutter_projects/components/item_counter.dart';

class CartPage extends StatelessWidget {
  final String imageUrl;

  const CartPage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarComponent(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ImageInCart(imageUrl: imageUrl),
                  const Text('Image details'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ItemCounter(),
                  Text('Button details'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
