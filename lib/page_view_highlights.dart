// auto scrolling for pageView done through Ticker
// using SingleTickerProviderStateMixin and working with AnimationController

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewHighlights extends StatefulWidget {
  const PageViewHighlights({super.key});

  @override
  State<PageViewHighlights> createState() => _PageViewHighlightsState();
}

class _PageViewHighlightsState extends State<PageViewHighlights>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0; // Track the current page
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Add a listener to handle page changes
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        // When animation completes, move to the next page
        if (_currentPage < 3) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        // Animate to the next page
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );

        // Reset and start the animation again
        _animationController.forward(from: 0.0);
      }
    });

    // Start the initial animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose of the PageController
    _animationController.dispose(); // Dispose of the AnimationController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            _currentPage = page; // Update the current page index
            _animationController.reset(); // Reset the animation on manual swipe
            _animationController.forward(); // Start the animation again
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
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 4,
              effect: const CustomizableEffect(
                dotDecoration: DotDecoration(
                  height: 10,
                  width: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                activeDotDecoration: DotDecoration(
                  height: 10,
                  width: 10,
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
