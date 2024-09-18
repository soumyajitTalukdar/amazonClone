import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  final String text;

  const TextPage({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text details'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
