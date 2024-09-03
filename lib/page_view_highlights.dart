import 'dart:async'; // Import this package for Timer
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewHighlights extends StatefulWidget {
  const PageViewHighlights({super.key});

  @override
  _PageViewHighlightsState createState() => _PageViewHighlightsState();
}

class _PageViewHighlightsState extends State<PageViewHighlights> {
  final PageController _pageController = PageController();
  late Timer _timer; // Declare a Timer
  int _currentPage = 0; // Track the current page

  @override
  void initState() {
    super.initState();

    // Initialize the timer for the auto slideshow
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      // Animate the page change
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    _pageController.dispose(); // Dispose the PageController
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
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
