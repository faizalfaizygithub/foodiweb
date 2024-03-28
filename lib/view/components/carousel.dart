import 'dart:async';

import 'package:flutter/material.dart';

class CarouselScreen extends StatefulWidget {
  final dynamic photos;

  const CarouselScreen({super.key, this.photos});
  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  late PageController _pageController;
  num activePage = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    autoScroll();
    super.initState();
  }

  void autoScroll() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (mounted) {
        _pageController.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
              controller: _pageController,
              itemCount: widget.photos.length * 1000,
              onPageChanged: (page) {
                num currentPage = page % widget.photos.length * 1000;
                print(currentPage);

                setState(() {
                  activePage = currentPage;
                });
              },
              itemBuilder: (context, pageposition) {
                num index = pageposition % widget.photos.length * 1000;
                bool active = index == activePage;
                return slider(widget.photos, pageposition, active);
              }),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageIndicator(widget.photos.length, activePage),
        ),
      ],
    );
  }
}

AnimatedContainer slider(photos, pageposition, active) {
  int indexx = pageposition % photos.length;
  double margin = active ? 10 : 20;
  return AnimatedContainer(
    duration: const Duration(
      microseconds: 500,
    ),
    curve: Curves.bounceInOut,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(photos[indexx]),
      ),
    ),
  );
}

List<Widget> imageIndicator(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      height: 10,
      width: 15,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == index * 1000 ? Colors.black : Colors.grey),
    );
  });
}
