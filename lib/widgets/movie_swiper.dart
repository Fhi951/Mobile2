import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class MovieSwiper extends StatelessWidget {
  const MovieSwiper({super.key});

  final List<String> movieImages = const [
    'https://imgur.com/gallery/running-wild-one-sheet-CTas5wR#/t/movie_poster',
    'https://imgur.com/gallery/still-one-of-all-time-favourite-movie-posters-EwhRd1O#/t/movie_poster',
    'https://imgur.com/gallery/inside-out-art-by-tom-whalen-1440x2960-Vne3K6e#/t/movie_poster',
    'https://imgur.com/gallery/psychos-AkOpGKg#/t/movie_poster',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(movieImages[index], fit: BoxFit.cover),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: movieImages.length,
        viewportFraction: 0.8,
        scale: 0.9,
        autoplay: true,
      ),
    );
  }
}
