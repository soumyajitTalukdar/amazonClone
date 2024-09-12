import 'package:flutter/material.dart';

class BuyAgainImages extends StatelessWidget {
  final String boxImageUrl;

  const BuyAgainImages({
    super.key,
    required this.boxImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            width: 2.0,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            child: Image.network(
              boxImageUrl,
              width: 125,
              height: 125,
            ),
          ),
        ),
      ),
    );
  }
}
