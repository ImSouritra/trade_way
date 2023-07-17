import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'card_header.dart';

class SingleCarouselSection extends StatelessWidget {
  final String sectionHeader;
  final List<Widget> items;

  SingleCarouselSection({
    required this.sectionHeader,
    required this.items,
  }) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          CardHeader(
            headerText: sectionHeader,
          ),
          CarouselSlider(
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.7, // Set viewportFraction to 0.7
                initialPage: 4,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false, // Set enlargeCenterPage to true
                scrollDirection: Axis.horizontal,
              ),
              items: items),
        ],
      ),
    );
  }
}

