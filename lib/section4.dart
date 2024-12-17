import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Section4 extends StatelessWidget {
  Section4({super.key});

  final List<String> images = [
    'assets/foto_1.jpg',
    'assets/foto_2.jpg',
    'assets/foto_3.jpg',
    'assets/foto_4.jpg',
    'assets/foto_5.jpg',
    'assets/foto_6.jpg',
    'assets/foto_7.jpg',
    'assets/foto_8.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              final imageUrl = images[index];
              return Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
            )),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
