import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_project_korea/modules/home/home_responses.dart';

import 'resize_all.dart';

class CarouselComponent extends StatefulWidget {
  final List<TypeItem> images;
  const CarouselComponent({super.key, required this.images});

  @override
  _CarouselComponentState createState() => _CarouselComponentState();
}

class _CarouselComponentState extends State<CarouselComponent> {
  int _currentIndex = 0;

  List<TypeItem> data = [
    TypeItem(image: "assets/images/slider1.png"),
    TypeItem(image: "assets/images/slider2.png"),
    TypeItem(image: "assets/images/slider3.png"),
    TypeItem(image: "assets/images/slider4.png"),
  ];
  @override
  Widget build(BuildContext context) {
    print(widget.images.length);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: ResponsiveUtil.resizeHeightOrWidth(context, 260),
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 1.0,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: widget.images
                .map((item) => _buildImageItem(item.image))
                .toList(),
          ),
          Positioned(
            bottom: ResponsiveUtil.resizeHeightOrWidth(context, 16),
            child: _buildIndicators(),
          ),
        ],
      ),
    );
  }

  Widget _buildImageItem(String url) {
    return ClipRRect(
      child: Image.asset(
        url,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }

  Widget _buildIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.images.asMap().entries.map((entry) {
        return Container(
          width: _currentIndex == entry.key
              ? ResponsiveUtil.resizeHeightOrWidth(context, 20)
              : ResponsiveUtil.resizeHeightOrWidth(context, 6),
          height: _currentIndex == entry.key ? 6 : 6,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _currentIndex == entry.key ? Colors.white : Colors.grey,
          ),
        );
      }).toList(),
    );
  }
}
