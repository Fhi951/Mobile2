import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MovieCarousel extends StatelessWidget {
  const MovieCarousel({super.key});

  final List<String> bannerImages = const [
    'https://imgur.com/gallery/batman-begins-2005-poster-by-adam-demarti-3xgioaE#/t/movie_poster',
    'https://imgur.com/gallery/youve-given-me-taste-life-E8CcUjs#/t/movie_poster',
    'https://imgur.com/gallery/catling-gun-RUFiOVT#/t/movie_poster',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
      ),
      items: bannerImages.map((url) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(url, fit: BoxFit.cover, width: 1000),
        );
      }).toList(),
    );
  }
}
