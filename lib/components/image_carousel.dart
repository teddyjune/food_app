import 'package:flutter/material.dart';
import 'package:food_app/demo_data.dart';
import 'package:food_app/home_screen.dart';

import '../constants.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            itemCount: demoBigImages.length,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset(demoBigImages[index]),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 40,
            child: Row(
              children: List.generate(
                demoBigImages.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: defaultPadding / 4),
                  child: IndicatorDot(isActive: index == currentPage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
