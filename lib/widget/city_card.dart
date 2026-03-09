import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String img, CityName, Rating;

  const CityCard({
    super.key,
    required this.img,
    required this.CityName,
    required this.Rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 500,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            // Make the image fill the container
            Image.network(
              img,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover, // This ensures all images are same size and cropped
            ),

            // Dark overlay
            Container(
              color: Colors.black.withOpacity(0.3),
            ),

            // City name
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Text(
                  CityName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Rating
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Text(
                  Rating,
                  style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}