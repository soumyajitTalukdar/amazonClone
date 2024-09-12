import 'package:flutter/material.dart';

class HorizontalHeaders extends StatelessWidget {
  final String text1;
  final String text2;

  const HorizontalHeaders({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: const TextStyle(
              fontSize: 20.0,
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
