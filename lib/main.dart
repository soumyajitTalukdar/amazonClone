import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(210, 65, 200, 180),
          title: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15.0),
                  child: Container(
                    // height: 40,
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
                              onPressed: () {
                                // navigation to be added
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.mic_rounded,
                                  color: Colors.grey, size: 30.0),
                              onPressed: () {
                                // navigation to be added
                              },
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
                onPressed: () {
                  // navigation to be added
                },
              ),
            ],
          ),
          toolbarHeight: 90.0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(120, 65, 200, 180),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        'Deliver to Soumyajit - Kolkata 700078',
                        style: TextStyle(
                          fontSize: 15.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(children: [
                        Container(
                            color: Colors.white,
                            height: 75,
                            width: 75,
                            child: Image.network(
                              "https://th.bing.com/th/id/OIP.qTiNdQtdf2_9XAt3sWSAjgHaFv?rs=1&pid=ImgDetMain",
                              fit: BoxFit.cover,
                              // height: 50,
                            )),
                        const Text(
                          'Grocery',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        )
                      ]),
                      Column(children: [
                        Container(
                            color: Colors.white,
                            height: 75,
                            width: 75,
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/000/620/311/original/aircraft-airplane-airline-logo-label-journey-air-travel-airliner-symbol-vector-illustration.jpg",
                              fit: BoxFit.cover,
                              // height: 50,
                            )),
                        const Text(
                          'Travel',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        )
                      ]),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
