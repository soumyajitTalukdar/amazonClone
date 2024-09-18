import 'package:flutter/material.dart';
import 'package:flutter_projects/components/appbar_component.dart';
import 'package:flutter_projects/components/menu_components.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: const AppbarComponent(),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MenuItems(),
          ],
        ),
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  final List<Map<String, String>> items = const [
    {
      'text': 'Amazon Pay',
      'imageUrl':
          'https://thumbs.dreamstime.com/b/portrait-happy-young-man-pointing-his-finger-screen-smartphone-white-background-142135096.jpg',
    },
    {
      'text': 'Mobile, Electronics & Alexa',
      'imageUrl':
          'https://th.bing.com/th/id/OIP.nyv0Rv8UpDFHra9nB2JK8wHaFa?rs=1&pid=ImgDetMain',
    },
    {
      'text': 'Amazon Bazaar',
      'imageUrl':
          'https://th.bing.com/th/id/OIP.PwiRmwqbuZxrXbKKRcxN5AHaF7?rs=1&pid=ImgDetMain',
    },
    {
      'text': 'Deals & Savings',
      'imageUrl':
          'https://th.bing.com/th/id/OIP.8reJ5Wy-C0uKDwpKRuowzwAAAA?rs=1&pid=ImgDetMain',
    },
    {
      'text': 'Groceries & Pet Supplies',
      'imageUrl':
          'https://i5.walmartimages.com/asr/520d4cc0-6d40-4dda-b101-61067fdfe4d8_2.9b13e435347586c1bcb5975ccf7746c6.jpeg',
    },
    {
      'text': 'MiniTV, Music & Video',
      'imageUrl':
          'https://th.bing.com/th/id/R.b8ccc1eb823994cdcd7a7fe9cfcdfbc3?rik=c7bDCDY2vEpOYw&riu=http%3a%2f%2f3.bp.blogspot.com%2f_i7JiKj94Pl4%2fTNn0Xyjk1XI%2fAAAAAAAAIQ8%2fs7S56Z3koF4%2fs1600%2f70467_CoverArt_GREATESTHITS_300RGB.jpg&ehk=7r5ZhK58dtCIbIL3fP1tqYu5Emg%2fysvdAtnGAN2EGIA%3d&risl=&pid=ImgRaw&r=0',
    },
    {
      'text': 'Fashion & Beauty',
      'imageUrl':
          'https://assets.teenvogue.com/photos/56d9d023c2c8271618ff7b4b/master/pass/AE7V3831.jpg',
    },
    {
      'text': 'Home, Furniture & Decor',
      'imageUrl':
          'https://2.bp.blogspot.com/-1-loiqzulzI/UMIZ30GXZ-I/AAAAAAAAbJ4/88RkPar7G0k/s1600/Beautiful+modern+sofa+furniture+designs..jpg',
    },
    {
      'text': 'Pharmacy, Health & Household',
      'imageUrl':
          'https://ace.globalintegrity.org/wp-content/uploads/2019/08/AdobeStock_171882033-5616x2808.jpeg',
    },
    {
      'text': 'Sport & Fitness',
      'imageUrl':
          'https://s7d2.scene7.com/is/image/dksfed/19soccer_package_red_black',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(90, 65, 200, 180),
      child: SizedBox(
        height: 1200,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return MenuComponents(
              text: item['text']!,
              imageUrl: item['imageUrl']!,
            );
          },
        ),
      ),
    );
  }
}
