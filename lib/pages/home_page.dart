import 'package:flutter/material.dart';
import 'package:flutter_projects/components/appbar_component.dart';
import 'package:flutter_projects/components/category_item.dart';
import 'package:flutter_projects/components/general_grid.dart';
import 'package:flutter_projects/components/little_features.dart';
import 'package:flutter_projects/components/little_features2.dart';
import 'package:flutter_projects/components/page_view_highlights.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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

  final List<String> boxDescs = [
    'Keep shopping for idols & figurines',
    'Keep shopping for body washes',
    'Keep shopping for Incense holders',
    'Keep shopping for Beauty and Personal Care',
    'Keep shopping for Gaming',
  ];

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
      appBar: const AppbarComponent(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(120, 65, 200, 180),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                      size: 24.0,
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        'Deliver to Soumyajit - Kolkata 700078',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
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
              ),
            ),
            const SizedBox(
              height: 275,
              child: PageViewHighlights(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const LittleFeatures(),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LittleFeatures2(
                                boxDesc: boxDescs[index],
                                boxImageUrl: boxImageUrls[index],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: Image.network(
                'https://i.pinimg.com/originals/66/e1/2b/66e12b0fff955ec8d943484d02cc7379.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Sponsored'),
                  Icon(
                    Icons.info,
                    size: 16.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 3,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Up to 75% off | Electronics festive sale from 6th - 10th sept',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: GeneralGrid(),
            ),
          ],
        ),
      ),
    );
  }
}
