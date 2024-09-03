import 'package:flutter/material.dart';
import 'package:flutter_projects/category_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://th.bing.com/th/id/OIP.qTiNdQtdf2_9XAt3sWSAjgHaFv?rs=1&pid=ImgDetMain',
      'https://www.citypng.com/public/uploads/preview/-1159629574507zqo9azzc.png',
      'https://cdn4.vectorstock.com/i/1000x1000/82/13/discount-percent-sign-sale-percentage-vector-31018213.jpg',
      'https://th.bing.com/th/id/OIP.rKxgX-1DoZhtASPPbNGDswAAAA?rs=1&pid=ImgDetMain',
      'https://play-lh.googleusercontent.com/0FjFpJN_gULcZez9PL56w0j0y757grsYZkGOFmX-JD2B-ES3YJsQDnbWCKiKZn8jHDk',
      'https://frames-production.s3.ap-south-1.amazonaws.com/assets/img/clients/amazonminitv.webp',
      'https://th.bing.com/th/id/OIP.t6FQsL3ntKtlIvQK1VwhfgAAAA?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.t1Tnb8lJMBqRGQMrzseavQAAAA?w=450&h=450&rs=1&pid=ImgDetMain',
      'https://n3.sdlcdn.com/imgs/b/1/q/Philips-HL7699-Mixer-Grinder-SDL622824736-1-57f3f.jpg',
      'https://startupjungle.com/wp-content/uploads/2017/02/cosmetic-products-3018845-1.jpg',
    ];

    final List<String> texts = [
      'Grocery',
      'Join now',
      'Deals',
      'Fashion',
      'Travel',
      'miniTV',
      'Electronics',
      'Mobiles',
      'Home',
      'Beauty',
    ];

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
              SizedBox(
                  height: 110,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(5.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: CategoryItem(
                            imageUrl: imageUrls[index],
                            text: texts[index],
                          ),
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
