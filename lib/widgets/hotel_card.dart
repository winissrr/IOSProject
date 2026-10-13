import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final String imagePath;
  final String hotelName;
  final String location;
  final String rating;
  final String price;
  final VoidCallback onTap;

  const HotelCard({
    super.key,
    required this.imagePath,
    required this.hotelName,
    required this.location,
    required this.rating,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 360,
              width: double.infinity,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotelName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 18,
                      ),

                      const SizedBox(width: 4),

                      Expanded(
                        child: Text(
                          location,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      const Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.amber,
                      ),

                      const SizedBox(width: 4),

                      Text(rating),
                    ],
                  ),

                  const SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$price / night',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}