import 'package:flutter/material.dart';
import 'package:flutter_projects/components/button_grid.dart';
import 'package:flutter_projects/components/buy_again_grid.dart';
import 'package:flutter_projects/components/horizontal_headers.dart';
import 'package:flutter_projects/components/keep_shopping_grid.dart';
import 'package:flutter_projects/components/your_orders_images.dart';
import 'package:flutter_projects/pages/image_page.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final List<String> boxImageUrls = [
    'https://img.joomcdn.net/0c4253ef397580e38e57df60624534844778b0d8_original.jpeg',
    'https://abclive1.s3.amazonaws.com/2c2edf5e-aa5c-4940-b5c6-6eb1ac32a016/productimage/10065676___XL.jpg',
    'https://ii1.pepperfry.com/media/catalog/product/b/r/1600x1760/brass-special-designer-agarbatti-stand---incense-holder-by-arghyam-brass-special-designer-agarbatti--pi2r5b.jpg',
    'https://trynow.pk/wp-content/uploads/2023/08/Axe-Phoenix-48H-Body-Spray-150ml-Rs590-Rs550-min-scaled.jpg',
    'https://www.trustedreviews.com/wp-content/uploads/sites/54/2022/11/PS5-Review-8-scaled.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(210, 65, 200, 180),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    'amazon',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    '.in',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.settings_outlined, size: 30.0),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications_outlined, size: 30.0),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.search_rounded, size: 30.0),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person_2_rounded,
                          size: 24.0,
                        ),
                        Text(
                          'Hello, Soumyajit',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '🇮🇳',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          'EN',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 130,
                  child: ButtonGrid(),
                ),
              ),
              const HorizontalHeaders(
                text1: 'Your orders',
                text2: 'See all',
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ImagePage(imageUrl: boxImageUrls[index]),
                                ),
                              );
                            },
                            child: YourOrdersImages(
                              boxImageUrl: boxImageUrls[index],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 5,
              ),
              const HorizontalHeaders(
                text1: 'Buy Again',
                text2: 'See all',
              ),
              SizedBox(
                height: 275,
                child: BuyAgainGrid(),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 5,
              ),
              const HorizontalHeaders(
                text1: 'Keep shopping for',
                text2: 'Edit',
              ),
              SizedBox(
                height: 375,
                child: KeepShoppingGrid(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, left: 8.0, bottom: 8.0),
                child: Text(
                  'See more',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, bottom: 13.0),
                child: Text(
                  'View your browsing history',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
