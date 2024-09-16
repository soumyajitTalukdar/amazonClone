import 'package:flutter/material.dart';
import 'package:flutter_projects/components/keep_shopping_components.dart';
import 'package:flutter_projects/pages/image_page.dart';

class KeepShoppingGrid extends StatelessWidget {
  KeepShoppingGrid({super.key});

  final List<Map<String, String>> items = const [
    {
      'boxText': 'Hair Oil',
      'boxImageUrl':
          'https://newassets.apollo247.com/pub/media/catalog/product/b/a/baj0006.jpg',
    },
    {
      'boxText': 'Detergents',
      'boxImageUrl':
          'https://cdn11.bigcommerce.com/s-xyx0x9ybhg/images/stencil/960w/products/544/2878/49024304007492__45308.1599141436.jpg?c=2',
    },
    {
      'boxText': 'Football shoes',
      'boxImageUrl':
          'https://cdna.lystit.com/photos/elcorteingles/9a4ccf26/nike-Blue-Mercurial-Veloce-Iii-Ag-pro-Football-Boots.jpeg',
    },
    {
      'boxText': 'Hair dyes',
      'boxImageUrl':
          'https://c.shld.net/rpx/i/s/i/spin/0/prod_2167569912??hei=64&wid=64&qlt=50',
    },
    {
      'boxText': 'Body care',
      'boxImageUrl':
          'https://cdn11.bigcommerce.com/s-vgxtu5v35e/images/stencil/original/products/2199/4095/11111375512__85600.1666566248.jpg?c=1',
    },
    {
      'boxText': 'Soaps & Skin care',
      'boxImageUrl':
          'https://rukminim1.flixcart.com/image/1664/1664/combo-kit/7/7/n/pears-pure-and-gentle-soap-original-imae83f9thvgwpxt.jpeg?q=90',
    },
  ];

  final List<String> numberOfViews = [
    '8 views',
    '5 views',
    '3 views',
    '3 views',
    '2 views',
    '2 views',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 180,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ImagePage(imageUrl: item['boxImageUrl']!),
              ),
            );
          },
          child: KeepShoppingComponents(
            boxImageUrl: item['boxImageUrl']!,
            boxText: item['boxText']!,
            views: numberOfViews[index],
          ),
        );
      },
    );
  }
}
