import 'package:flutter/material.dart';

class KeepShoppingComponents extends StatelessWidget {
  final String boxImageUrl;
  final String boxText;
  final String views;

  const KeepShoppingComponents({
    super.key,
    required this.boxImageUrl,
    required this.boxText,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 134,
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
        Text(
          boxText,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          views,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
