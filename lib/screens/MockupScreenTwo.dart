import 'package:flutter/material.dart';

class MockupScreenTwo extends StatelessWidget {
  const MockupScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/John.png',
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 40,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Jumanji:The Next Level',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Make categories more visible with improved styling
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Action • Adventure • Comedy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Popular Movies Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Whats Popular',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 220,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                children: const [
                  MovieCard(
                    title: 'Birds of Prey',
                    imageAsset: 'assets/movie1.jpg',
                    rating: 8.5,
                  ),
                  MovieCard(
                    title: 'Red Sparrow',
                    imageAsset: 'assets/movie2.jpg',
                    rating: 8.2,
                  ),
                  MovieCard(
                    title: 'Avatar 2',
                    imageAsset: 'assets/movie3.jpg',
                    rating: 7.9,
                  ),
                  MovieCard(
                    title: 'Top Gun: Maverick',
                    imageAsset: 'assets/movie4.jpg',
                    rating: 8.7,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Now Playing',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 220,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                children: const [
                  MovieCard(
                    title: 'To All Boys:P.S.I still Love you',
                    imageAsset: 'assets/movie5.jpg',
                    rating: 9.0,
                  ),
                  MovieCard(
                    title: 'Ford and ferrari',
                    imageAsset: 'assets/exit.jpg',
                    rating: 7.5,
                  ),
                  MovieCard(
                    title: 'Mission: Impossible',
                    imageAsset: 'assets/exit.jpg',
                    rating: 8.3,
                  ),
                  MovieCard(
                    title: 'Guardians Vol.3',
                    imageAsset: 'assets/exit.jpg',
                    rating: 8.1,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Recommended Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Recommended for You',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 220,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                children: const [
                  MovieCard(
                    title: 'Inception',
                    imageAsset: 'assets/movie9.jpg',
                    rating: 8.8,
                  ),
                  MovieCard(
                    title: 'The Dark Knight',
                    imageAsset: 'assets/movie10.jpg',
                    rating: 9.1,
                  ),
                  MovieCard(
                    title: 'Tenet',
                    imageAsset: 'assets/movie11.jpg',
                    rating: 7.8,
                  ),
                  MovieCard(
                    title: 'Joker',
                    imageAsset: 'assets/movie12.jpg',
                    rating: 8.4,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
      // Bottom navigation bar removed as requested
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String imageAsset;
  final double rating;

  const MovieCard({
    Key? key,
    required this.title,
    required this.imageAsset,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Movie Poster with Rating
          Stack(
            children: [
              // Movie Poster with Rounded Corners
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imageAsset,
                  height: 180,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
              // Rating Circle
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      rating.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Movie Title
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
