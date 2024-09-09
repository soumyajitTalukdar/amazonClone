import 'package:flutter/material.dart';

class PageViewHighlights extends StatefulWidget {
  const PageViewHighlights({super.key});

  @override
  State<PageViewHighlights> createState() => _PageViewHighlightsState();
}

class _PageViewHighlightsState extends State<PageViewHighlights>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        if (_currentPage < 3) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );

        _animationController.forward(from: 0.0);
      }
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page; // Update the current page index
            });
            _animationController.reset();
            _animationController.forward();
          },
          children: <Widget>[
            Image.network(
              'https://cdn.dribbble.com/users/5739021/screenshots/16801648/hp-pavilion-gaming-laptop-advertisement-poster-design-2.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Image.network(
              'https://th.bing.com/th/id/OIP.DPO7IgtoylAClFg2KOIbZgHaFj?rs=1&pid=ImgDetMain',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Image.network(
              'https://ntvb.tmsimg.com/assets/p20450286_b_h8_bf.jpg?w=960&h=540',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Image.network(
              'https://graphicsfamily.com/wp-content/uploads/edd/2021/10/iPhone-Website-Ad-Banner-Design-1180x664.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(4, (int index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
