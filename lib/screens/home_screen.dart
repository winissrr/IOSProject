import 'package:flutter/material.dart';
import '../widgets/hotel_card.dart';
import 'hotel_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HotelTrip'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Find your perfect stay',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: 'Search hotels or destinations',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Popular destinations',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _destinationChip('Almaty'),
                  _destinationChip('Astana'),
                  _destinationChip('Dubai'),
                  _destinationChip('Istanbul'),
                  _destinationChip('Paris'),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Recommended hotels',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            HotelCard(
              imagePath: 'assets/images/istambul_barcelo.jpg',
              hotelName: 'Barcelo Hotel Istambul',
              location: 'Istambul, Turkey',
              rating: '4.6',
              price: '\$120',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HotelDetailsScreen(
                      imagePath: 'assets/images/istambul_barcelo.jpg',
                      hotelName: 'Barcelo Hotel Istambul',
                      location: 'Istambul, Turkey',
                      rating: '4.6',
                      price: '\$120',
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 16),

            HotelCard(
              imagePath: 'assets/images/almaty_sadu.jpg',
              hotelName: 'Sadu Hotel Almaty',
              location: 'Almaty, Kazakhstan',
              rating: '4.4',
              price: '\$125',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HotelDetailsScreen(
                      imagePath: 'assets/images/almaty_sadu.jpg',
                      hotelName: 'Sadu Hotel Almaty',
                      location: 'Almaty, Kazakhstan',
                      rating: '4.4',
                      price: '\$125',
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 16),

            HotelCard(
              imagePath: 'assets/images/dubai_atlantis.jpg',
              hotelName: 'Atlantis, The Palm',
              location: 'Dubai, UAE',
              rating: '4.7',
              price: '\$450',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HotelDetailsScreen(
                      imagePath: 'assets/images/dubai_atlantis.jpg',
                      hotelName: 'Atlantis, The Palm',
                      location: 'Dubai, UAE',
                      rating: '4.7',
                      price: '\$450',
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _destinationChip(String destination) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(destination),
      ),
    );
  }
}