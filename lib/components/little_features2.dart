import 'package:flutter/material.dart';

class LittleFeatures2 extends StatelessWidget {
  final String boxDesc;
  final String boxImageUrl;

  const LittleFeatures2({
    super.key,
    required this.boxDesc,
    required this.boxImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            child: Text(
              boxDesc,
              style: const TextStyle(fontSize: 16),
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
          const SizedBox(height: 16),
          Image.network(
            boxImageUrl,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
