import 'package:flutter/material.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final trendingMovies = [
      'https://imgur.com/gallery/new-poster-terminator-genisys-featuring-arnie-e2w1D7L#/t/movie_poster',
      'https://imgur.com/gallery/captain-america-winter-soldier-new-poster-KEfW1tG#/t/movie_poster',
      'https://imgur.com/gallery/new-fantastic-four-poster-vlVx7gt#/t/movie_poster',
      'https://imgur.com/gallery/paranormis-4l4gvAC#/t/movie_poster',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending Now'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
        ),
        itemCount: trendingMovies.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(trendingMovies[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
