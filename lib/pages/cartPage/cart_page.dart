import 'package:flutter/material.dart';
import 'package:flutter_projects/components/appbar_component.dart';
import 'package:flutter_projects/components/image_in_cart.dart';
import 'package:flutter_projects/components/item_counter.dart';

class CartPage extends StatefulWidget {
  final String imageUrl;

  const CartPage({
    super.key,
    required this.imageUrl,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _itemCount = 1;

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
              if (_itemCount > 0) // Only show the row if item count > 0
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageInCart(imageUrl: widget.imageUrl),
                        const Text('Image details'),
                      ],
                    ),
                    Row(
                      children: [
                        ItemCounter(
                          initialCount: _itemCount,
                          onItemCountChanged: (count) {
                            setState(() {
                              _itemCount = count;
                            });
                          },
                        ),
                        const Text('Button details'),
                      ],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
