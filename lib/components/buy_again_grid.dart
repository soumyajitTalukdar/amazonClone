import 'package:flutter/material.dart';
import 'package:flutter_projects/components/buy_again_images.dart';

class BuyAgainGrid extends StatelessWidget {
  BuyAgainGrid({super.key});

  final List<String> imageUrls = [
    'https://newassets.apollo247.com/pub/media/catalog/product/b/a/baj0006.jpg',
    'https://cdn11.bigcommerce.com/s-xyx0x9ybhg/images/stencil/960w/products/544/2878/49024304007492__45308.1599141436.jpg?c=2',
    'https://cdna.lystit.com/photos/elcorteingles/9a4ccf26/nike-Blue-Mercurial-Veloce-Iii-Ag-pro-Football-Boots.jpeg',
    'https://c.shld.net/rpx/i/s/i/spin/0/prod_2167569912??hei=64&wid=64&qlt=50',
    'https://cdn11.bigcommerce.com/s-vgxtu5v35e/images/stencil/original/products/2199/4095/11111375512__85600.1666566248.jpg?c=1',
    'https://rukminim1.flixcart.com/image/1664/1664/combo-kit/7/7/n/pears-pure-and-gentle-soap-original-imae83f9thvgwpxt.jpeg?q=90',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        final item = imageUrls[index];
        return BuyAgainImages(
          boxImageUrl: item,
        );
      },
    );
  }
}
