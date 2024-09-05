import 'package:flutter/material.dart';
import 'package:flutter_projects/components/appbar_component.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppbarComponent(),
      body: Center(
        child: Text('This is the cart page'),
      ),
    );
  }
}
