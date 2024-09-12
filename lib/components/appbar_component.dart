import 'package:flutter/material.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize; // Declare preferredSize

  const AppbarComponent({super.key})
      : preferredSize = const Size.fromHeight(90.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(210, 65, 200, 180),
      title: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Amazon.in',
                    prefixIcon: const Icon(Icons.search, size: 30.0),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.camera_alt_outlined,
                              color: Colors.grey, size: 30.0),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.mic_rounded,
                              color: Colors.grey, size: 30.0),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.qr_code_scanner_rounded, size: 30.0),
            onPressed: () {},
          ),
        ],
      ),
      toolbarHeight: 90.0,
    );
  }
}
